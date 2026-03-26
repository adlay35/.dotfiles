return {
  "ThePrimeagen/harpoon",
  branch = "harpoon2",
  dependencies = { "nvim-lua/plenary.nvim" },
  opts = {
    settings = {
      save_on_toggle = true,
    },
  },
  keys = function()
    local harpoon = require("harpoon")
    return {
      { "<leader>a", function() harpoon:list():add() end, desc = "Harpoon Add File" },

      { "<C-e>", function() harpoon.ui:toggle_quick_menu(harpoon:list()) end, desc = "Harpoon Menu" },

      { "<C-j>", function() harpoon:list():select(1) end, desc = "Harpoon to File 1" },
      { "<C-k>", function() harpoon:list():select(2) end, desc = "Harpoon to File 2" },
      { "<C-l>", function() harpoon:list():select(3) end, desc = "Harpoon to File 3" },
      { "<C-;>", function() harpoon:list():select(4) end, desc = "Harpoon to File 4" },
    }
  end,
}
