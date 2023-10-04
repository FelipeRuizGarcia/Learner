### Topics

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

``` :checkhealth mason  ```

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
