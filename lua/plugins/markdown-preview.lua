return {
  {
    "iamcco/markdown-preview.nvim",
    build = function(plugin)
      local app = plugin.dir .. "/app"
      local uv = vim.uv or vim.loop
      local cwd = uv.cwd()

      -- Use the Node fallback instead of relying on the prebuilt binary.
      -- The macOS arm64 release binary fails to exec on this machine with E903/-88,
      -- so keep the JS dependencies installed for `node app/index.js`.
      -- See https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/plugins/extras/lang/markdown.lua for default config.
      uv.chdir(app)
      local output = vim.fn.system({ "npm", "install" })
      local code = vim.v.shell_error
      uv.chdir(cwd)
      if code ~= 0 then
        error(output)
      end

      -- Make the broken prebuilt binary non-executable so mkdp#rpc#start_server()
      -- skips it and falls back to the working Node entrypoint.
      local macos_arm64_bin = app .. "/bin/markdown-preview-macos-arm64"
      if vim.fn.filereadable(macos_arm64_bin) == 1 then
        vim.fn.system({ "chmod", "-x", macos_arm64_bin })
      end
    end,
  },
}
