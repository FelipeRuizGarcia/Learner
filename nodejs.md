# Node

https://nodejs.org/api/corepack.html

Using Corepack

* https://pnpm.io/installation#using-corepack

## Node Package Manager
Node Version Manager - POSIX-compliant bash script to manage multiple active node.js versions 
<br>
https://github.com/nvm-sh/nvm

Node by default uses CommonJS unless package.json says `"type": "module"`.
By default, uses callbacks instead of promises. Node promises APIs are available in default packages.


### bun
Bun is an all-in-one JavaScript runtime & toolkit designed for speed, complete with a bundler, test runner, and Node.js-compatible package manager.

TS support
https://bun.sh/docs/runtime/typescript
<br>
https://bun.sh/

###  pnpm
Fast, disk space efficient package manager:
<br>
https://github.com/pnpm/pnpm

```
Update all the packages and update the package.json

pnpm up -L -f

```

---

## npmjs registry

https://www.npmjs.com/

---

use tags / release version of the package with `@` wildcard.

example

```
pnpm install react@latest

pnpm install react@next
```
