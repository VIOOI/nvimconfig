require('lspconfig').jsonls.setup {
	settings = {
		json = {
			schemas = require('schemastore').json.schemas {
				select = {
					'.eslintrc',
					'package.json',
					'tsconfig.json',
					'babelrc.json'
				},
			},
		},
	},
	setup = {
		commands = {
			Format = {
				function()
					vim.lsp.buf.range_formatting({}, { 0, 0 }, { vim.fn.line "$", 0 })
				end,
			},
		},
	},
}
