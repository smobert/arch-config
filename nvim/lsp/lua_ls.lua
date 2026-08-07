return {
    cmd = { "lua-language-server" },

    settings = {
        Lua = {
            runtime = {
                version = "LuaJIT",
            },

            diagnostics = {
                globals = { "vim" },
            },

            workspace = {
                checkThirdParty = false,
                library = vim.api.nvim_get_runtime_file("", true),
            },

            telemetry = {
                enable = false,
            },
        },
    },
  filetypes = { "lua" },
}
