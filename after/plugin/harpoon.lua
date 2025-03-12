local mark = require('harpoon.mark')
local ui = require('harpoon.ui')

vim.keymap.set("n", "<leader>ha", mark.add_file)
vim.keymap.set("n", "<leader>hl", ui.toggle_quick_menu)

function map_key(key, n)
	vim.keymap.set("n", "<leader>h"..key, function() ui.nav_file(n) end)
end

for i=1,9,1
do
	map_key(i, i)
end

map_key(0, 10)

for i, key in ipairs({'q', 'w', 'e', 'r', 't', 'y', 'u', 'i', 'o', 'p'})
do
	map_key(key, i+10)
end
