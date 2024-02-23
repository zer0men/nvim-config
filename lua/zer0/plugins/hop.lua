return {
    'phaazon/hop.nvim',
    config = function()
        -- you can configure Hop the way you like here; see :h hop-config
        require 'hop'.setup { keys = 'etovxqpdygfblzhckisuran' }
    end,
    keys = {
        { "<leader>hh", vim.cmd.HopChar2,    desc = "Hop Char 2" },
        { "<leader>hl", vim.cmd.HopLine,     desc = "Hop Line" },
        { "<leader>ha", vim.cmd.HopAnywhere, desc = "Hop Anywhere" },
        { "<leader>hp", vim.cmd.HopPattern,  desc = "Hop Pattern" },
    }
}
