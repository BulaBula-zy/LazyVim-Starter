return {
  {
    "folke/which-key.nvim",
    opts = function(_, opts)
      for _, group in ipairs(opts.spec or {}) do
        for _, mapping in ipairs(group) do
          if mapping[1] == "<leader>w" then
            mapping[1] = "<leader>W"
            mapping.group = "windows"
          end
        end
      end
    end,
  },
}
