-- ~/.config/nvim/colors/embers_light.lua
--
-- Light companion to embers.lua.
-- Install: put this file at ~/.config/nvim/colors/embers_light.lua
-- Use:     :colorscheme embers_light

if vim.g.colors_name then
  vim.cmd("hi clear")
end
if vim.fn.exists("syntax_on") == 1 then
  vim.cmd("syntax reset")
end

vim.o.background = "light"
vim.g.colors_name = "embers_light"

-- "default" adapts sensibly to background=light and gives us a full base
-- set of groups (Comment, Diff*, Search, etc.) to inherit before overriding.
vim.cmd("colorscheme default")

local hl = vim.api.nvim_set_hl

hl(0, "@keyword", { fg = "#B84E2E" })
hl(0, "@keyword.conditional", { link = "@keyword" })
hl(0, "@keyword.import", { link = "@keyword" })
hl(0, "@keyword.type", { link = "@keyword" })
hl(0, "@keyword.directive", { fg = "#7B4FA0" })

hl(0, "@type", { fg = "#6B5B45", bold = true })
hl(0, "@type.builtin", { link = "@type", bold = true })
hl(0, "@type.definition", { link = "@type" })

hl(0, "@variable", { fg = "#5A7A2E" })
hl(0, "@variable.member", { fg = "#B85A38" })
hl(0, "@variable.builtin", { fg = "#5A4E96", bold = true })

hl(0, "@function", { fg = "#C1631C" })
hl(0, "@function.builtin", { link = "@keyword" })
hl(0, "@function.macro", { fg = "#8A5FAE" })
hl(0, "@function.method.call", { link = "@function" })

hl(0, "@label", { fg = "#954A42" })
hl(0, "@attribute", { link = "@function.macro", bold = true })

hl(0, "@string", { fg = "#A83346" })
hl(0, "@string.special", { fg = "#6A4E96" })
hl(0, "@string.escape", { link = "@string.special" })

hl(0, "@number", { fg = "#C1613C" })
hl(0, "@number.float", { link = "@number" })

hl(0, "@punctuation", { fg = "#8A8580" })
hl(0, "@operator", { link = "@punctuation" })
hl(0, "@punctuation.special", { link = "@function.macro" })

hl(0, "@property", { link = "@variable.member" })
hl(0, "@boolean", { link = "@number" })
hl(0, "@constant", { link = "@string.special" })
hl(0, "@constant.builtin", { link = "@constant", bold = true })
hl(0, "@constructor", { link = "@punctuation", bold = true })
hl(0, "@markup.math", { link = "@constant", bold = true })

hl(0, "@module", { fg = "#2E8A6E", bold = false })

hl(0, "@tag", { link = "@function", bold = true })
hl(0, "@tag.delimiter", { link = "@punctuation" })
hl(0, "@tag.attribute", { link = "@variable" })

hl(0, "@lsp.type.enumMember", { fg = "#4E5E8A" })
hl(0, "@lsp.type.macro", { fg = "#4A5A8A" })
hl(0, "@lsp.type.function", { link = "@function" })
hl(0, "@lsp.type.method", { link = "@function", bold = true })
hl(0, "@lsp.type.property", { link = "@property" })
hl(0, "@lsp.type.namespace", { link = "@module" })

hl(0, "Normal", { fg = "#2B2825", bg = "#F7F3EC" })
hl(0, "Special", { link = "@string.special" })
hl(0, "Identifier", { link = "@variable" })
hl(0, "Type", { link = "@type" })
hl(0, "Statement", { link = "@keyword" })
hl(0, "MatchParen", { fg = "#2B2825", bold = true })
hl(0, "FloatBorder", { fg = "#4A4640", bg = "none" })
hl(0, "Pmenu", { fg = "#2B2825", bg = "#EDE7DB" })
hl(0, "PmenuExtra", { fg = "#2B2825", bg = "none" })
hl(0, "PmenuKind", { bg = "none" })
hl(0, "WinSeparator", { fg = "#7A756E", bg = "none" })
hl(0, "ColorColumn", { bg = "#ECE6DA" })
