local nmap = function(key, bind, desc)
	vim.keymap.set("n", key, bind, { desc = desc })
end

local telescope = require("telescope.builtin")

-- [f]ind
nmap("<leader>ff", telescope.find_files, "[f]ind [f]ile")
nmap("<leader>fw", telescope.live_grep, "[f]ind [w]ord")
nmap("<leader>fb", telescope.buffers, "[f]ind [b]uffer")
nmap("<leader>fg", telescope.git_files, "[f]ind [g]it")
nmap("<leader>fh", telescope.help_tags, "[f]ind [h]elp")
nmap("<leader>fj", telescope.jumplist, "[f]ind [j]umplist")
nmap("<leader>fk", telescope.keymaps, "[f]ind [k]eymaps")
