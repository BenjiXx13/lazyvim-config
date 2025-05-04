return {
  "nvim-neo-tree/neo-tree.nvim",
  branch = "v3.x",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-tree/nvim-web-devicons", -- optional, falls Icons gewünscht
    "MunifTanjim/nui.nvim",
  },
  config = function()
    require("neo-tree").setup({
      filesystem = {
        follow_current_file = {
          enabled = true, -- ✅ folgt der aktuellen Datei
        },
        use_libuv_file_watcher = true, -- ✅ automatisch refreshen
        filtered_items = {
          visible = true,
          hide_dotfiles = false,
          hide_gitignored = false,
        },
      },
      window = {
        position = "left",
        width = 30,
        mappings = {
          ["<space>"] = "noop", -- removing space mapping to toggle node
        },
      },
    })

    -- Optional: Keymap zum Öffnen/Schließen
    vim.keymap.set("n", "<leader>fe", ":Neotree toggle<CR>", { desc = "Toggle Neo-tree" })
  end,
}
