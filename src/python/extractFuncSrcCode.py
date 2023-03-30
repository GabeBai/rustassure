import subprocess
import glob


def get_line_number(filename, funcname):
    found = False
    cmd = "ctags -x --c-kinds=fp " + filename + " | grep " + funcname

    output = subprocess.getoutput(cmd)
    lines = output.splitlines()

    for line in lines:
        if line.startswith(funcname + " "):    
            found = True

            if output.strip() is not "":
                output = output.split(" ")
                lines = list(filter(None, output))
                line_num = lines[2]

                print("Function found in file " + filename + " on line: " + line_num)
                return int(line_num)

    if found == False:
        print("Function not found")
        return 0


def process_file(filename, line_num):
    print("opening " + filename + " on line " + str(line_num))

    code = ""
    cnt_braket = 0
    found_start = False
    found_end = False

    with open(filename, "r") as f:
        for i, line in enumerate(f):
            if(i >= (line_num - 1)):
                code += line

                if line.count("{") > 0:
                    found_start = True
                    cnt_braket += line.count("{")

                if line.count("}") > 0:
                    cnt_braket -= line.count("}")

                if cnt_braket == 0 and found_start == True:
                    found_end = True
                    return code


folder = "/home/hamed/rust/apps/libcsv"
funcname = "csv_init"

for filename in glob.iglob(folder + "/*.c", recursive=True):
    line_num = get_line_number(filename, funcname)

    if line_num > 0:
        code = process_file(filename, line_num)
        print("code:\n", code)
