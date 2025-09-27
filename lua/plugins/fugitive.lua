return {
  {
    "tpope/vim-fugitive",
    cmd = { "Git", "Gdiffsplit", "Gvdiffsplit", "Gread", "Gwrite", "Ggrep", "Glog" },
    keys = {
      { "<leader>gs", "<cmd>Git<cr>", desc = "Git status" },
      -- { "<leader>gc", "<cmd>Git commit<cr>", desc = "Git commit" },
      -- { "<leader>gp", "<cmd>Git push<cr>", desc = "Git push" },
      -- { "<leader>gP", "<cmd>Git pull --rebase<cr>", desc = "Git pull --rebase" },
      -- { "<leader>gl", "<cmd>Git log --oneline --decorate --graph<cr>", desc = "Git log (graph)" },
      -- { "<leader>gb", "<cmd>Git blame<cr>", desc = "Git blame" },
      -- { "<leader>gd", "<cmd>Gdiffsplit<cr>", desc = "Diff (split)" },
      -- { "<leader>gD", "<cmd>Gvdiffsplit<cr>", desc = "Diff (vsplit)" },
      -- { "<leader>gr", "<cmd>Gread<cr>", desc = "Restore file from HEAD" },
      -- { "<leader>gw", "<cmd>Gwrite<cr>", desc = "Stage current file" },
    },
    init = function()
      -- Optional: open fugitive in a split for status (feels nicer than in-place)
      vim.api.nvim_create_autocmd("FileType", {
        pattern = "fugitive",
        callback = function()
          vim.opt_local.foldmethod = "manual"
        end,
      })
    end,
  },

  -- Optional but handy: open GitHub/GitLab pages with :Gbrowse
  -- Requires a remote configured (and a supported host).
  -- Uncomment to enable:
  -- {
  --   "tpope/vim-rhubarb",
  --   event = "VeryLazy",
  --   dependencies = { "tpope/vim-fugitive" },
  -- },
}

