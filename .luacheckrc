-- Rerun tests only if their modification time changed.
cache = true
codes = true

-- Glorious list of warnings: https://luacheck.readthedocs.io/en/stable/warnings.html
ignore = {
    "212/self", -- Unused argument, In the case of callback function
    "212/mod",
    "111/_",
    "122/vim",
    "112",
    "111",
    "631",
}

exclude_files = { ".ci/**/*"}

-- Global objects defined by the C code
read_globals = {
    "vim",
    string = {
        fields = {
            firstToUpper = { read_only = false },
            split = { read_only = false },
            at = { read_only = false },
            trim = { read_only = false },
        },
    },
}
