local lsp_zero = require('lsp-zero')
local lsp_config = require('lspconfig')

local on_attach = (function(client, bufnr)
    -- see :help lsp-zero-keybindings
    -- to learn the available actions
    lsp_zero.default_keymaps({buffer = bufnr})
end)


-- to learn how to use mason.nvim
-- read this: https://github.com/VonHeikemen/lsp-zero.nvim/blob/v3.x/doc/md/guide/integrate-with-mason-nvim.md
require('mason').setup({})
require('mason-lspconfig').setup({
    ensure_installed = {"lua_ls", "omnisharp", "jdtls", "emmet_language_server"},
    handlers = {
        function(server_name)
            lsp_config[server_name].setup({
                on_attach = on_attach
            })
        end,
        ["lua_ls"] = function()
            lsp_config.lua_ls.setup({
                settings = {
                    Lua = {
                        diagnostics = {
                            globals = {"vim", "use", "require"}
                        }
                    }
                }
            })
        end,
        ["emmet_language_server"] = function()
            lsp_config.emmet_language_server.setup({
                filetypes = {"css", "html", "javascript", "javascriptreact", "sass", "scss", "typescriptreact"}
            })
        end,
    },
})
