-- telescope
local builtin = require("telescope.builtin")

vim.keymap.set("n", "<leader>f", builtin.find_files, {})
vim.keymap.set("n", "<leader>fg", builtin.git_files, {})
vim.keymap.set("n", "<leader>ft", builtin.live_grep, {})
vim.keymap.set("n", "<leader>fb", builtin.buffers, {})
