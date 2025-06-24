import os
from openai import OpenAI
import json
import sys
from pathlib import Path

client = OpenAI(api_key=os.environ.get('OPENAI_KEY'))

BASE_PROMPT = (
    "According to the original code and its LLVM IR format, produce a mapping "
    "from every C-side argument position to the corresponding Rust-side "
    "argument position. **Return ONLY a JSON object** whose keys and values "
    "are strings of the positions, e.g. {\"0\": \"1\", \"2\": \"0\"}. "
    "Do not wrap the JSON in markdown, and do not add extra text."
)

samples = {
    "csv_strerror": {
        "c_original_code":  "csv_strerror(int status)",
        "c_ir_file":        "i8* (i32)*",
        "rust_original_code":"csv_strerror(status: i32)",
        "rust_ir_file":     "{ [0 x i8]*, i64 } (i32)*",
    },
    "csv_get_buffer_size": {
        "c_original_code":  "csv_get_buffer_size(const struct csv_parser *p)",
        "c_ir_file":        "i64 (%struct.csv_parser.5*)*",
        "rust_original_code":"csv_get_buffer_size(p: &CsvParser)",
        "rust_ir_file":     "i64 (%CsvParser.43*)*",
    },
}

def ask_model(payload: str) -> dict:
    """Call the model once and return the parsed JSON mapping."""
    resp = client.chat.completions.create(
        model="o4-mini-2025-04-16",
        # temperature=0.5,
        messages=[
            {"role": "system", "content": BASE_PROMPT},
            {"role": "user",   "content": payload},
        ],
    )
    answer = resp.choices[0].message.content.strip()
    return json.loads(answer)  # will raise JSONDecodeError if not valid

def load_samples(json_path: Path) -> dict:
    if not json_path.is_file():
        sys.exit(f"[Error] JSON file not found: {json_path}")
    try:
        with json_path.open("r", encoding="utf-8") as f:
            return json.load(f)
    except json.JSONDecodeError as e:
        sys.exit(f"[Error] Invalid JSON in {json_path}: {e}")


if __name__ == '__main__':
    if len(sys.argv) < 2:
        input_path = "repo/Rust/rustify-validator/src/python/function_map.json"
    else:
        input_path = sys.argv[1]

    input_path = Path(input_path)
    input_json = load_samples(input_path)
    results = {}
    for fname, data in input_json.items():
        user_payload = (
            f"C original:\n{data['c_original_code']}\n\n"
            f"C IR:\n{data['c_ir_file']}\n\n"
            f"Rust original:\n{data['rust_original_code']}\n\n"
            f"Rust IR:\n{data['rust_ir_file']}"
        )
        try:
            mapping = ask_model(user_payload)
        except json.JSONDecodeError as e:
            raise RuntimeError(f"{fname} returned invalid JSON:\n{e}") from e
        results[fname] = mapping
        print(f"{fname}: {mapping}")

    print(json.dumps(results, indent=2))


