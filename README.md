## Setup before running nvim
1. Must install packer with (or newest install method):

  ```git clone --depth 1 https://github.com/wbthomason/packer.nvim\
 ~/.local/share/nvim/site/pack/packer/start/packer.nvim
```

2. Open nvim, lots of errors.  Ignore run PackerSync

## Structure
 
Attempt to build out a normal structure tree with special neovim folders as required.
```
init.lua -> loads lua/configs/init.lua
|----configs/init.lua -> loads other .lua files as long as specified by: require("configs.remap").  This loads the remap.lua file inside the configs dir.
|----configs/remap.lua -> holds custom remaps
|----configs/packer.lua -> holds all plugins to be loaded by packer.  Add additional plugins here.
|----configs/set.lua -> set various vim options.  E.g. search methods. how to split, numbers, clipboard, etc.  All old vimL configs.
plugin/ -> do not edit this.  Allow packer to do its thing.
after/ -> this provides all the customized features for each plugin to be loaded.  See examples below.
|----plugin/lsp.lua -> provides all the shortcut keys and mappings for lsp.  If you want to require new language servers, add here.
```
### Customize

