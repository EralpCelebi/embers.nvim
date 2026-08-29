-- ~/.config/nvim/colors/embers.lua
--
-- Install: put this file at ~/.config/nvim/colors/embers.lua
-- Use:     :colorscheme embers   (or vim.cmd.colorscheme("embers") in init.lua)

-- Reset any existing highlighting, and make sure syntax highlighting is on.
if vim.g.colors_name then
  vim.cmd("hi clear")
end
if vim.fn.exists("syntax_on") == 1 then
  vim.cmd("syntax reset")
end

vim.o.background = "dark"
vim.g.colors_name = "embers"

-- Base it on habamax, then layer overrides on top.
vim.cmd("colorscheme habamax")

local hl = vim.api.nvim_set_hl

hl(0, "@keyword", { fg = "#EE6C4D" })
hl(0, "@keyword.conditional", { link = "@keyword" })
hl(0, "@keyword.import", { link = "@keyword" })
hl(0, "@keyword.type", { link = "@keyword" })
hl(0, "@keyword.directive", { fg = "#B48EDE" })

hl(0, "@type", { fg = "#C6B89E", bold = true })
hl(0, "@type.builtin", { link = "@type", bold = true })
hl(0, "@type.definition", { link = "@type" })

hl(0, "@variable", { fg = "#9ab962" })
hl(0, "@variable.member", { fg = "#EE8C6D" })
hl(0, "@variable.builtin", { fg = "#A79BD9", bold = true })

hl(0, "@function", { fg = "#F7A360" })
hl(0, "@function.builtin", { link = "@keyword" })
hl(0, "@function.macro", { fg = "#D0BCEE" })
hl(0, "@function.method.call", { link = "@function" })

hl(0, "@label", { fg = "#C97A72" })
hl(0, "@attribute", { link = "@function.macro", bold = true })

hl(0, "@string", { fg = "#cf5565" })
hl(0, "@string.special", { fg = "#D8C7F1" })
hl(0, "@string.escape", { link = "@string.special" })

hl(0, "@number", { fg = "#F7B3A4" })
hl(0, "@number.float", { link = "@number" })

hl(0, "@punctuation", { fg = "#7A7470" })
hl(0, "@operator", { link = "@punctuation" })
hl(0, "@punctuation.special", { link = "@function.macro" })

hl(0, "@property", { link = "@variable.member" })
hl(0, "@boolean", { link = "@number" })
hl(0, "@constant", { link = "@string.special" })
hl(0, "@constant.builtin", { link = "@constant", bold = true })
hl(0, "@constructor", { link = "@punctuation", bold = true })
hl(0, "@markup.math", { link = "@constant", bold = true })

hl(0, "@module", { fg = "#62C9AC", bold = false })

hl(0, "@tag", { link = "@function", bold = true })
hl(0, "@tag.delimiter", { link = "@punctuation" })
hl(0, "@tag.attribute", { link = "@variable" })

hl(0, "@lsp.type.enumMember", { fg = "#A6B5D6" })
hl(0, "@lsp.type.macro", { fg = "#6F83AA" })
hl(0, "@lsp.type.function", { link = "@function" })
hl(0, "@lsp.type.method", { link = "@function", bold = true })
hl(0, "@lsp.type.property", { link = "@property" })
hl(0, "@lsp.type.namespace", { link = "@module" })

hl(0, "Normal", { bg = "#100F0F" })
hl(0, "Special", { link = "@string.special" })
hl(0, "Identifier", { link = "@variable" })
hl(0, "Type", { link = "@type" })
hl(0, "Statement", { link = "@keyword" })
hl(0, "MatchParen", { fg = "#BAB4B0", bold = true })
hl(0, "FloatBorder", { fg = "#FFFFFF", bg = "none" })
hl(0, "Pmenu", { fg = "#FFFFFF", bg = "none" })
hl(0, "PmenuExtra", { fg = "#FFFFFF", bg = "none" })
hl(0, "PmenuKind", { bg = "none" })
hl(0, "WinSeparator", { fg = "#AAAAAA", bg = "none" })
hl(0, "ColorColumn", { bg = "#151515" })
