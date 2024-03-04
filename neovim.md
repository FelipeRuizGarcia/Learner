# Nvim Topics

Understanding nvim ecosystem

https://roobert.github.io/2022/12/03/Extending-Neovim/

---

### Buffers / Windows / Tabs

https://neovim.io/doc/user/windows.html

### Moving

https://neovim.io/doc/user/usr_29.html#29.3

### Scrolling

https://neovim.io/doc/user/scroll.html

### Tags

https://neovim.io/doc/user/usr_29.html#29.1

https://neovim.io/doc/user/tagsrch.html

---

### Text Objects

https://neovim.io/doc/user/motion.html#text-objects

https://jdhao.github.io/2020/11/15/nvim_text_objects/

https://github.com/nvim-treesitter/nvim-treesitter-textobjects

```

:options

```

---

By default your <leader> is \, backslash. You can check it with:

```
:echo mapleader
```

#### Treesitter

https://blog.pabuisson.com/2022/08/neovim-modern-features-treesitter-and-lsp/

## https://github.com/nvim-treesitter/nvim-treesitter/issues/2533

#### Lua under vimscript

Put things after the package manager, example `call plug#end()`

https://github.com/nvim-treesitter/nvim-treesitter/issues/270#issuecomment-725883316

---

#### Providers

## https://neovim.io/doc/user/provider.html

```
:h windows
:h diff-mode

:h jumpto-diffs
:h jumpto-diffs

```

---

```
 First delete the blank lines:
:g/^\s*$/d

Then use a substitution (:s///) over each line (%) to replace all (g) continuous whitespace (\s\+) with a comma (,).

 :%s/\s\+/,/g

```

---

### Neovim setup

nvim plug
https://github.com/junegunn/vim-plug

Configs and plugings at

### LUA

https://github.com/williamboman/mason.nvim

`:checkhealth mason `

https://github.com/nvim-lua/plenary.nvim

https://github.com/nanotee/nvim-lua-guide

https://neovim.io/doc/lua-resources/

### LSP

https://microsoft.github.io/language-server-protocol/

https://neovim.io/doc/lsp/

:LspInfo

https://github.com/neoclide/coc.nvim/wiki/Install-coc.nvim#install-extensions-for-programming-languages-you-use-daily

#### Coc & Marketplace

https://github.com/neoclide

##### coc.nvim

```

Paths for configuration

~/.local/share/nvim/plugged
───────────────────────────
~/.cache/nvim
───────────────────────────
~/.config/coc/extensions

```

```

 ~/.config/coc/extensions  la
total 0
lrwxrwxrwx. 1 adapa adapa 54 Jan 23 01:12 package.json -> /home/user/repos/super-machine-setup/vim/package.json

─────────────────────────────────────────────────────────────────────────────────────────────────────────────────

 ~/.config/nvim  la
total 0
lrwxrwxrwx. 1 adapa adapa 50 Jan 23 01:12 init.vim -> /home/user/repos/super-machine-setup/vim/init.vim
lrwxrwxrwx. 1 adapa adapa 54 Jan 23 01:12 package.json -> /home/user/repos/super-machine-setup/vim/package.json

```

---

https://github.com/neoclide/coc.nvim

https://github.com/neoclide/coc.nvim/wiki/Statusline-integration

---

##### coc extensions

https://github.com/neoclide/coc.nvim/wiki/Using-coc-extensions#manage-extensions-with-coclist

https://github.com/fannheyward/coc-marketplace

https://github.com/fannheyward/coc-sql

https://github.com/fannheyward/coc-pyright

https://github.com/yaegassy/coc-tailwindcss3

```
:CocInstall coc-sql
```

#### AUTO FORMAT

https://github.com/sbdchd/neoformat

https://github.com/dense-analysis/ale

### Snippets

https://github.com/ults-io/vscode-react-javascript-snippets
