use std::collections::HashSet;

struct OpngOptions {
    backup: bool,
    clobber: bool,
    debug: bool,
    fix: bool,
    force: bool,
    full: bool,
    preserve: bool,
    quiet: bool,
    simulate: bool,
    verbose: bool,
    out_name: Option<String>,
    dir_name: Option<String>,
    log_name: Option<String>,
    interlace: i32,
    nb: bool,
    nc: bool,
    np: bool,
    nz: bool,
    optim_level: i32,
    compr_level_set: HashSet<i32>,
    mem_level_set: HashSet<i32>,
    strategy_set: HashSet<i32>,
    filter_set: HashSet<i32>,
    window_bits: i32,
    snip: bool,
    strip_all: bool,
}

struct LocalOptions {
    help: bool,
    version: bool,
}

enum Operation {
    Run,
    ShowHelp,
    ShowVersion,
}

fn parse_args(argc: usize, argv: Vec<String>) -> (OpngOptions, LocalOptions, Operation) {
    let mut options = OpngOptions {
        backup: false,
        clobber: false,
        debug: false,
        fix: false,
        force: false,
        full: false,
        preserve: false,
        quiet: false,
        simulate: false,
        verbose: false,
        out_name: None,
        dir_name: None,
        log_name: None,
        interlace: -1,
        nb: false,
        nc: false,
        np: false,
        nz: false,
        optim_level: -1,
        compr_level_set: HashSet::new(),
        mem_level_set: HashSet::new(),
        strategy_set: HashSet::new(),
        filter_set: HashSet::new(),
        window_bits: 0,
        snip: false,
        strip_all: false,
    };

    let mut local_options = LocalOptions {
        help: false,
        version: false,
    };

    let mut operation = Operation::ShowHelp;
    let mut file_count = 0;
    let mut stop_switch = false;

    let mut i = 1;
    while i < argc {
        let arg = &argv[i];
        if stop_switch || !arg.starts_with('-') {
            file_count += 1;
            i += 1;
            continue;
        }

        let opt = &arg[1..];
        let mut xopt = None;

        if opt == "-" {
            stop_switch = true;
        } else if opt == "?" || opt.starts_with("help") {
            local_options.help = true;
        } else if opt.starts_with("backup") || opt.starts_with("keep") {
            options.backup = true;
        } else if opt.starts_with("clobber") {
            options.clobber = true;
        } else if opt == "debug" {
            options.debug = true;
        } else if opt.starts_with("fix") {
            options.fix = true;
        } else if opt.starts_with("force") {
            options.force = true;
        } else if opt.starts_with("full") {
            options.full = true;
        } else if opt == "nb" {
            options.nb = true;
        } else if opt == "nc" {
            options.nc = true;
        } else if opt == "np" {
            options.np = true;
        } else if opt == "nx" {
            options.nb = true;
            options.nc = true;
            options.np = true;
        } else if opt == "nz" {
            options.nz = true;
        } else if opt.starts_with("preserve") {
            options.preserve = true;
        } else if opt.starts_with("quiet") || opt.starts_with("silent") {
            options.quiet = true;
        } else if opt.starts_with("simulate") {
            options.simulate = true;
        } else if opt.starts_with("snip") {
            options.snip = true;
        } else if opt == "v" {
            options.verbose = true;
            local_options.version = true;
        } else if opt.starts_with("verbose") {
            options.verbose = true;
        } else if opt.starts_with("version") {
            local_options.version = true;
        } else {
            if i + 1 < argc {
                xopt = Some(argv[i + 1].clone());
                i += 1;
            }
        }

        if let Some(xopt) = xopt {
            if opt == "o" {
                let val = xopt.parse::<i32>().unwrap_or(-1);
                if options.optim_level < 0 {
                    options.optim_level = val;
                } else if options.optim_level != val {
                    panic!("Multiple optimization levels are not permitted");
                }
            } else if opt == "i" {
                let val = xopt.parse::<i32>().unwrap_or(-1);
                if options.interlace < 0 {
                    options.interlace = val;
                } else if options.interlace != val {
                    panic!("Multiple interlace types are not permitted");
                }
            } else if opt == "f" {
                // Add logic to parse and add to filter_set
            } else if opt == "zc" {
                // Add logic to parse and add to compr_level_set
            } else if opt == "zm" {
                // Add logic to parse and add to mem_level_set
            } else if opt == "zs" {
                // Add logic to parse and add to strategy_set
            } else if opt == "zw" {
                let val = xopt.parse::<i32>().unwrap_or(0);
                if options.window_bits == 0 {
                    options.window_bits = val;
                } else if options.window_bits != val {
                    panic!("Multiple window sizes are not permitted");
                }
            } else if opt.starts_with("strip") {
                // Add logic to handle strip option
                options.strip_all = true;
            } else if opt.starts_with("out") {
                if options.out_name.is_some() {
                    panic!("Multiple output file names are not permitted");
                }
                options.out_name = Some(xopt);
            } else if opt.starts_with("dir") {
                if options.dir_name.is_some() {
                    panic!("Multiple output dir names are not permitted");
                }
                options.dir_name = Some(xopt);
            } else if opt.starts_with("log") {
                if options.log_name.is_some() {
                    panic!("Multiple log file names are not permitted");
                }
                options.log_name = Some(xopt);
            } else {
                panic!("Unrecognized option: {}", arg);
            }
        }

        i += 1;
    }

    if options.out_name.is_some() {
        if file_count > 1 {
            panic!("The option -out requires one input file");
        }
        if options.dir_name.is_some() {
            panic!("The options -out and -dir are mutually exclusive");
        }
    }

    if options.log_name.is_some() {
        if !options.log_name.as_ref().unwrap().ends_with(".log") {
            panic!("To prevent accidental data corruption, the log file name must end with \".log\"");
        }
    }

    if local_options.help {
        operation = Operation::ShowHelp;
    } else if file_count != 0 {
        operation = Operation::Run;
    } else if local_options.version {
        operation = Operation::ShowVersion;
    } else {
        operation = Operation::ShowHelp;
    }

    (options, local_options, operation)
}
