--
-- Default settings for formatter: https://www.lazyvim.org/plugins/formatting
--
return {
  "stevearc/conform.nvim",
  opts = {
    formatters_by_ft = {
      lua = { "stylua" },
      cpp = { "clang-format" },
      cuda = { "clang-format-cuda" },
      -- python = { "yapf", "isort" },
      sh = { "shfmt" },
      snakemake = { "snakefmt" },
      markdown = { "prettierd", "cbfmt" },
      -- typst = { "typstyle" },
      -- nix = { "nixfmt" },
      json = { "prettierd" },
    },

    formatters = {
      -- cbfmt = {
      --   command = "cbfmt",
      --   args = { "-w", "--config", vim.fn.expand("~") .. "/.config/cbfmt.toml", "$FILENAME" },
      -- },
      ["clang-format-cuda"] = {
        command = "clangd",
        args = { "--style=google" },
      },
    },
  },
}
