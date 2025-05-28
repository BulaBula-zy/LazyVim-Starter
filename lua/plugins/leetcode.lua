return {
  "kawre/leetcode.nvim",
  -- build = ":TSUpdate html", -- if you have `nvim-treesitter` installed
  dependencies = {
    "nvim-telescope/telescope.nvim",
    "ibhagwan/fzf-lua",
    "nvim-lua/plenary.nvim",
    "MunifTanjim/nui.nvim",
  },
  opts = {
    ---@type lc.lang
    lang = "python3",
    cn = { -- leetcode.cn
      enabled = true, ---@type boolean
      translator = false, ---@type boolean
      translate_problems = false, ---@type boolean
    },
    ---@type boolean
    image_support = false,
    injector = { ---@type table<lc.lang, lc.inject>
      ["python3"] = {
        before = true,
        after = [[
if __name__ == '__main__':
    def main():
        sol = Solution()

    main()
]],
      },
      ["cpp"] = {
        before = { "#include <bits/stdc++.h>", "using namespace std;" },
        after = "int main() {}",
      },
    },
  },
}
