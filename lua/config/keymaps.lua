local nmap = function(key, bind, desc)
	vim.keymap.set("n", key, bind, { desc = desc })
end
