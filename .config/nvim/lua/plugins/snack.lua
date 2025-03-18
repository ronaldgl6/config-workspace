-- Plugin: snacks.nvim
-- URL: https://github.com/folke/snacks.nvim/tree/main
-- Description: A Neovim plugin for creating a customizable dashboard.
return {
  "folke/snacks.nvim",
  opts = {
    image = {},
    picker = {
      matcher = {
        fuzzy = true,
        smartcase = true,
        ignorecase = true,
        filename_bonus = true,
      },
      sources = {
        explorer = {
          matcher = {
            fuzzy = true, -- Enables fuzzy matching, so you can be a bit imprecise with your search terms
            smartcase = true, -- If your search term has uppercase letters, the search becomes case-sensitive
            ignorecase = true, -- Ignores case when searching, unless smartcase is triggered
            filename_bonus = true, -- Gives a higher priority to matches in filenames
            sort_empty = false, -- If no matches are found, it won't sort the results
          },
        },
      },
    },
    dashboard = {
      sections = {
        { section = "header" },
        { icon = " ", title = "Keymaps", section = "keys", indent = 2, padding = 1 },
        { icon = " ", title = "Recent Files", section = "recent_files", indent = 2, padding = 1 },
        { icon = " ", title = "Projects", section = "projects", indent = 2, padding = 1 },
        { section = "startup" },
      },
      preset = {
        header = [[
    °                 .                                   · 
▄▒   ·  .                                            °    ▒▄
▀██▒                                    .            ·  ▒██▀
  ███▒     · °                ·                 ·     ▒███  
°  ████▒▒                               ·     °    ▒▒████   
  · ███████▒▒▒·    .                  °     . ▒▒▒███████   °
      █████████▒▒▒     °   ·         .   ▒▒▒█████████   ·   
    ·    ██████████▒▒▒▒.         ·  ▒▒▒▒██████████ ·        
          · ████████████▒▒▒      ▒▒▒████████████        ·   
        ·  °  ·████████████░°   ░███████████  ·     °       
   °              ████████░·   · ░████████        ·         
             ·      ██████░      ░██████    ·°    ·         
    ·            ·  ██████░  .   ░██████ ·                  
             °     ███████░°     ░███████   ·               
         ·     ·  █████████▄ . ´▄█████████  °               
                  ▀██████████████████████▀        ·         
              °     ·▀████████████████▀    °             ·  
                 ·      ▀██████████▀    ·   ·               
      ·             °  ·   ▀████▀                           
                      ·      ▀▀  .  °                       ]],
      },
    },
  },
}
