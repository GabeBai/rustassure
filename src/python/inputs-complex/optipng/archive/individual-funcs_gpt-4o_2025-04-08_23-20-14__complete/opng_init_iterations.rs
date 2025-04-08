struct OpngPreset {
    compr_level: &'static str,
    mem_level: &'static str,
    strategy: &'static str,
    filter: &'static str,
}

const PRESETS: [OpngPreset; 8] = [
    OpngPreset { compr_level: "", mem_level: "", strategy: "", filter: "" },
    OpngPreset { compr_level: "", mem_level: "", strategy: "", filter: "" },
    OpngPreset { compr_level: "9", mem_level: "8", strategy: "0-", filter: "0,5" },
    OpngPreset { compr_level: "9", mem_level: "8-9", strategy: "0-", filter: "0,5" },
    OpngPreset { compr_level: "9", mem_level: "8", strategy: "0-", filter: "0-" },
    OpngPreset { compr_level: "9", mem_level: "8-9", strategy: "0-", filter: "0-" },
    OpngPreset { compr_level: "1-9", mem_level: "8", strategy: "0-", filter: "0-" },
    OpngPreset { compr_level: "1-9", mem_level: "8-9", strategy: "0-", filter: "0-" },
];
