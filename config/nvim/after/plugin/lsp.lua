local lsp = require('lsp-zero').preset({})

vim.g.markdown_fenced_languages = {
  'ts=typescript',
}

lsp.on_attach(function(client, bufnr)
    lsp.default_keymaps({buffer = bufnr})
end)

require('lspconfig').lua_ls.setup(lsp.nvim_lua_ls())

vim.opt.completeopt = {'menu', 'menuone', 'noselect'}

local cmp = require('cmp')
local cmp_action = require('lsp-zero').cmp_action()
local lspkind = require('lspkind')

cmp.setup({
  mapping = lsp.defaults.cmp_mappings({
    ['<C-Space>'] = cmp.mapping.complete(),
    ['<C-f>'] = cmp_action.luasnip_jump_forward(),
    ['<C-b>'] = cmp_action.luasnip_jump_backward(),
    ['<CR>'] = cmp.mapping.confirm({ select = false }),
  }),
  formatting = {
    format = lspkind.cmp_format(),
  }
})

lsp.setup()
