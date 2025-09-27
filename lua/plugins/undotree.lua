return {
  {
    "mbbill/undotree",
    -- Toggle with <leader>u
    keys = {
      { "<leader>u", function() vim.cmd.UndotreeToggle() end, desc = "Toggle Undotree" },
    },
    init = function()
      -- 1) Persistent undo: keep history on disk
      vim.opt.undofile = true
      local dir = vim.fn.stdpath("state") .. "/undo"  -- e.g. ~/.local/state/nvim/undo
      if vim.fn.isdirectory(dir) == 0 then
        vim.fn.mkdir(dir, "p")
      end
      vim.opt.undodir = dir
    end,
    config = function()
      -- 2) Nice defaults
      vim.g.undotree_SetFocusWhenToggle = 1   -- focus the tree when opened
      -- Optional tweaks (uncomment if you like):
      vim.g.undotree_SplitWidth = 40
      -- vim.g.undotree_DiffpanelHeight = 12
      -- vim.g.undotree_RelativeTimestamp = 1
    end,
  },
}

