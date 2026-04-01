return {
	"mfussenegger/nvim-dap",
	dependencies = {
		"williamboman/mason.nvim",
		"igorlfs/nvim-dap-view",
	},
	config = function()
		local dap = require("dap")
		local view = require("dap-view")

		dap.adapters["pwa-node"] = {
			type = "server",
			host = "localhost",
			port = "${port}",
			executable = {
				command = "node",
				args = {
					vim.fn.stdpath("data") .. "/mason/packages/js-debug-adapter/js-debug/src/dapDebugServer.js",
					"${port}",
				},
			},
		}

		dap.configurations.javascript = {
			{
				type = "pwa-node",
				request = "launch",
				name = "Launch file",
				program = "${file}",
				cwd = "${workspaceFolder}",
				sourceMaps = true,
				protocol = "inspector",
				console = "integratedTerminal",
			},
		}

		vim.keymap.set("n", "<Leader>dv", function()
			view.toggle()
		end, { desc = "Debug: Toggle View" })
		vim.keymap.set("n", "<Leader>dc", function()
			dap.continue()
		end, { desc = "Debug: Continue" })
		vim.keymap.set("n", "<Leader>db", function()
			dap.toggle_breakpoint()
		end, { desc = "Debug: Toggle  Breakpoint" })
		vim.keymap.set("n", "<Leader>dn", function()
			dap.step_over()
		end, { desc = "Debug: Step Over" })
		vim.keymap.set("n", "<Leader>di", function()
			dap.step_into()
		end, { desc = "Debug: Step Into" })
		vim.keymap.set("n", "<Leader>do", function()
			dap.step_out()
		end, { desc = "Debug: Step Out" })
		vim.keymap.set("n", "<Leader>dt", function()
			dap.terminate()
		end, { desc = "Debug:Session Terminate" })
	end,
}
