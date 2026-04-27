return {
	"folke/snacks.nvim",
	event = "VimEnter",
	opts = {
		bigfile = { enabled = true },
		dashboard = {
			enabled = true,
			preset = {
				header = [[
                                              
       ████ ██████           █████      ██
      ███████████             █████ 
      █████████ ███████████████████ ███   ███████████
     █████████  ███    █████████████ █████ ██████████████
    █████████ ██████████ █████████ █████ █████ ████ █████
  ███████████ ███    ███ █████████ █████ █████ ████ █████
 ██████  █████████████████████ ████ █████ █████ ████ ██████
      ]],
				keys = {
					{ icon = "󰱼 ", key = "f", desc = "Find File", action = ":lua Snacks.dashboard.pick('files')" },
					{ icon = " ", key = "n", desc = "New File", action = ":ene | startinsert" },
					{
						icon = "󰒲 ",
						key = "r",
						desc = "Recent Files",
						action = ":lua Snacks.dashboard.pick('oldfiles')",
					},
					{
						icon = "󰒲 ",
						key = "c",
						desc = "Config",
						action = ":lua Snacks.dashboard.pick('files', {cwd = vim.fn.stdpath('config')})",
					},
					{
						icon = "󰒲 ",
						key = "l",
						desc = "Lazy",
						action = ":Lazy",
						enabled = package.loaded.lazy ~= nil,
					},
					{ icon = "󰁯 ", key = "q", desc = "Quit", action = ":qa!" },
				},
			},
			sections = {
				{ section = "header" },
				{ section = "keys", gap = 1, padding = 1 },
				{
					icon = "󰁯 ",
					title = "Projects",
					section = "projects",
					padding = 1,
					pane = 1,
					indent = 3,
					gap = 0.5,
				},
				{ section = "startup" },
			},
		},
		-- explorer = { enabled = true },
		image = { enabled = true },
		indent = { enabled = true },
		-- input = { enabled = true },
		lazygit = { enabled = true },
		picker = { enabled = true },
		notifier = { enabled = true },
		git = { enabled = true },
		quickfile = { enabled = true },
		scope = { enabled = true },
		scroll = { enabled = true },
		scratch = { enabled = true },
		-- statuscolumn = { enabled = true },
		-- terminal = { enabled = true },
		-- toggle = { enabled = true },
		-- words = { enabled = true },
		zen = {
			enabled = true,
			toggles = {
				ufo = true,
				dim = true,
				git_signs = false,
				diagnostics = false,
				line_number = false,
				relative_number = false,
				signcolumn = "no",
				indent = false,
			},
		},
	},
	keys = {
		{
			"<leader>lg",
			function()
				Snacks.lazygit()
			end,
			desc = "[L]azy[G]it",
		},
		{
			"<leader>un",
			function()
				Snacks.notifier.hide()
			end,
			desc = "Dismiss All Notifications",
		},
		{
			"<c-/>",
			function()
				Snacks.terminal()
			end,
			desc = "Toggle Terminal",
			mode = { "n", "t" },
		},
		{
			"<c-_>",
			function()
				Snacks.terminal()
			end,
			desc = "which_key_ignore",
		},
		{
			"]]",
			function()
				Snacks.words.jump(vim.v.count1)
			end,
			desc = "Next Reference",
			mode = { "n", "t" },
		},
		{
			"[[",
			function()
				Snacks.words.jump(-vim.v.count1)
			end,
			desc = "Prev Reference",
			mode = { "n", "t" },
		},

		-- Picker key maps
		{ "\\", "<cmd>NvimTreeToggle<CR>", desc = "File Explorer" },
		{
			"<leader>ss",
			function()
				Snacks.picker.smart()
			end,
			desc = "Smart Find Files",
		},
		{
			"<leader><space>",
			function()
				Snacks.picker.buffers()
			end,
			desc = "[ ] Find existing buffers",
		},
		{
			"<leader>sg",
			function()
				Snacks.picker.grep()
			end,
			desc = "[S]earch by [G]rep",
		},
		{
			"<leader>sn",
			function()
				Snacks.picker.files({ cwd = vim.fn.stdpath("config") })
			end,
			desc = "[S]earch [N]eovim files",
		},
		{
			"<leader>sf",
			function()
				Snacks.picker.files()
			end,
			desc = "[S]earch [F]iles",
		},
		{
			"<leader>sp",
			function()
				Snacks.picker.pickers()
			end,
			desc = "[S]earch [P]ickers",
		},
		{
			"<leader>s.",
			function()
				Snacks.picker.recent()
			end,
			desc = "[S]earch Recent Files ('.' for repeat)",
		},
		{
			"<leader>sk",
			function()
				Snacks.picker.keymaps()
			end,
			desc = "[S]earch [K]eymaps",
		},
		{
			"<leader>sw",
			function()
				Snacks.picker.grep_word()
			end,
			desc = "[S]earch current [W]ord",
			mode = { "n", "x" },
		},
		{
			"<leader>sr",
			function()
				Snacks.picker.resume()
			end,
			desc = "[S]earch [R]esume",
		},
		{
			"<leader>sh",
			function()
				Snacks.picker.help()
			end,
			desc = "[S]earch [H]elp",
		},
		{
			"<leader>sd",
			function()
				Snacks.picker.diagnostics()
			end,
			desc = "[S]earch [D]iagnostics",
		},
		{
			"<leader>s/",
			function()
				Snacks.picker.grep_buffers()
			end,
			desc = "[S]earch [/] in Open Files",
		},
		{
			"<leader>/",
			function()
				Snacks.picker.lines({
					-- use the Select layout
					layout = {
						preset = "select", -- ⟵ preset defined in docs :contentReference[oaicite:0]{index=0}
					},
				})
			end,
			desc = "[/] Fuzzily search in current buffer",
		},
		{
			"<leader>bz",
			function()
				Snacks.zen()
			end,
			desc = "Toggle Zen Mode",
			mode = "n",
		},
		{
			"<leader>bd",
			function()
				Snacks.dashboard()
			end,
			desc = "Toggle Dashboard",
			mode = "n",
		},
	},
}
