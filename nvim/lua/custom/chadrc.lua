-- Just an example, supposed to be placed in /lua/custom/

local pluginConfs = require "custom.plugins.configs"
local M = {}

-- make sure you maintain the structure of `core/default_config.lua` here,
-- example of changing theme:

M.options = {
   user = function()
       require("custom.myoptions")
   end,
}

M.plugins = {

   --options = {
   --   lspconfig = {
   --      setup_lspconf = "custom.plugins.lspconfig",
   --   },
   
   

   --   statusline = {
   --      separator_style = "round",
   --   },
   --},

   override = {
      ["kyazdani42/nvim-tree.lua"] = pluginConfs.nvimtree,
      ["nvim-treesitter/nvim-treesitter"] = pluginConfs.treesitter,
      ["lukas-reineke/indent-blankline.nvim"] = pluginConfs.blankline,
   },

   user = require "custom.plugins",

   remove = {
      "folke/which-key.nvim",
   },
}

M.ui = {
   theme = "catppuccin",
   
   changed_themes = {
   		catppuccin = {
   			base_16 = {
   				base00 = "#181825",
   			},
   			
   			base_30 = {
   				black = "#181825",
   			},
   		},
   },
}

return M
