local mark = require('harpoon.mark')
local ui = require('harpoon.ui')

vim.keymap.set("n", "<leader>ha", mark.add_file)
vim.keymap.set("n", "<leader>hl", ui.toggle_quick_menu)

function map_key(key, n)
	vim.keymap.set("n", "<leader>h"..key, function() ui.nav_file(n) end)
end

-- surely there is something built into lua that does this...
function index_iter(iter)
	local i = 1

	return function()
		local i_save = i
		i = i+1

		local element = iter()
		if element == nil then return nil end

		return i_save, element
	end
end

keys = '1234567890qwertyuiop'

for i, key in index_iter(keys:gmatch('.'))
do
	map_key(key, i)
	--print('i = '..i..'; key = '..key)
end
