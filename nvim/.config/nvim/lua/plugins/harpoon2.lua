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
      -- 1. 파일 추가 (Add)
      { "<leader>a", function() harpoon:list():add() end, desc = "Harpoon Add File" },

      -- 2. 메뉴 열기 (Quick Menu)
      { "<C-e>", function() harpoon.ui:toggle_quick_menu(harpoon:list()) end, desc = "Harpoon Menu" },

      -- 3. jkl; 위치로 파일 점프 (1~4번)
      -- 오른손 검지(j)부터 새끼손가락(;)까지 순서대로 1, 2, 3, 4번입니다.
      { "<C-j>", function() harpoon:list():select(1) end, desc = "Harpoon to File 1" },
      { "<C-k>", function() harpoon:list():select(2) end, desc = "Harpoon to File 2" },
      { "<C-l>", function() harpoon:list():select(3) end, desc = "Harpoon to File 3" },
      { "<C-;>", function() harpoon:list():select(4) end, desc = "Harpoon to File 4" },
    }
  end,
}
