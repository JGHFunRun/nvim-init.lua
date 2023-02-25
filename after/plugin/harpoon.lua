local mark = require('harpoon.mark')
local ui = require('harpoon.ui')

vim.keymap.set("n", "<leader>ha", mark.add_file)
vim.keymap.set("n", "<leader>hl", ui.toggle_quick_menu)

for i=1,9,1
do
	vim.keymap.set("n", "<leader>h"..i, function() ui.nav_file(i) end)
end
