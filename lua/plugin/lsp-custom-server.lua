local lspconfig = require'lspconfig'
local configs = require'lspconfig.configs'

local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities.textDocument.completion.completionItem.snippetSupport = true

if not configs.ls_emmet then			--> Emmet LSP
  configs.ls_emmet = {
    default_config = {
      cmd = { 'ls_emmet', '--stdio' };
      filetypes = {
        'html', 'css', 'scss',
        'javascript', 'javascriptreact',
				'typescript', 'typescriptreact',
        'haml', 'xml', 'xsl', 'pug',
        'slim', 'sass', 'stylus', 'less',
        'sss', 'hbs', 'handlebars',
      };
      root_dir = function(fname)
        return vim.loop.cwd()
      end;
      settings = {};
    };
  }
end

lspconfig.ls_emmet.setup { capabilities = capabilities }

lspconfig.diagnosticls.setup {
  filetypes = {"javascript", "javascriptreact", "typescript", "typescriptreact", "css"},
  init_options = {
    filetypes = {
      javascript = "eslint",
      typescript = "eslint",
      javascriptreact = "eslint",
      typescriptreact = "eslint"
    },
    linters = {
      eslint = {
        sourceName = "eslint",
        command = "./node_modules/.bin/eslint",
        rootPatterns = {
          ".eslitrc.js",
          "package.json"
        },
        debounce = 100,
        args = {
          "--cache",
          "--stdin",
          "--stdin-filename",
          "%filepath",
          "--format",
          "json"
        },
        parseJson = {
          errorsRoot = "[0].messages",
          line = "line",
          column = "column",
          endLine = "endLine",
          endColumn = "endColumn",
          message = "${message} [${ruleId}]",
          security = "severity"
        },
        securities = {
          [2] = "error",
          [1] = "warning"
        }
      }
    }
  }
}
