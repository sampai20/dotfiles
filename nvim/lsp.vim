nnoremap <silent> gd <cmd>lua vim.lsp.buf.definition()<CR>
nnoremap <silent> gD <cmd>lua vim.lsp.buf.declaration()<CR>
nnoremap <silent> gr <cmd>lua vim.lsp.buf.references()<CR>
nnoremap <silent> gi <cmd>lua vim.lsp.buf.implementation()<CR>
nnoremap <silent> <leader>rn <cmd>lua vim.lsp.buf.rename()<CR>
nnoremap <silent> K <cmd>lua vim.lsp.buf.hover()<CR>
" nnoremap <silent> <C-k> <cmd>lua vim.lsp.buf.signature_help()<CR>
nnoremap <silent> <space>k <cmd>lua vim.diagnostic.goto_prev()<CR>
nnoremap <silent> <space>j <cmd>lua vim.diagnostic.goto_next()<CR>
nnoremap <silent> <space>a <cmd>lua vim.lsp.buf.code_action()<CR>


lua << EOF
  vim.o.completeopt = "menuone,noselect"

  local t = function(str)
    return vim.api.nvim_replace_termcodes(str, true, true, true)
  end

  local check_back_space = function()
      local col = vim.fn.col('.') - 1
      if col == 0 or vim.fn.getline('.'):sub(col, col):match('%s') then
          return true
      else
          return false
      end
  end

  require'lspconfig'.tsserver.setup{}
	require'lspconfig'.pyright.setup{}
EOF
