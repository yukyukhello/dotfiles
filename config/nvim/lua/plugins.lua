vim.cmd.packadd "packer.nvim"

require("packer").startup(function()
    -- プラグインの追加をこの中に記述
    -- use "hoge/hoge-plugin"
    use 'wbthomason/packer.nvim'
end)