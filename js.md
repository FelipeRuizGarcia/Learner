# JS

## Topics and Concepts

```
key differences between const, let, and var in JavaScript:
Scope

    var has function scope or global scope
    let and const have block scope (within {})

Hoisting

    var variables are hoisted and initialized with undefined
    let and const are hoisted but not initialized, resulting in a "Temporal Dead Zone"

Reassignment

    var and let variables can be reassigned
    const variables cannot be reassigned

Redeclaration

    var variables can be redeclared in the same scope
    let variables cannot be redeclared in the same scope
    const variables cannot be redeclared in the same scope

Initialization

    var and let can be declared without initialization
    const must be initialized upon declaration

In summary, const provides the most restrictions, followed by let, while var is the most flexible but also the most error-prone. The general recommendation is to use const by default, and only use let when you need to reassign a variable. var should be avoided in modern JavaScript developmen

```

#### Sourcemap

https://esbuild.github.io/api/#sourcemap

#### Callbacks

https://lenguajejs.com/javascript/asincronia/callbacks/

##### Dynamic module loading

https://developer.mozilla.org/en-US/docs/Web/JavaScript/Guide/Modules#dynamic_module_loading

##### CJS, AMD, UMD, and ESM

https://dev.to/iggredible/what-the-heck-are-cjs-amd-umd-and-esm-ikm

-   CJS does not work in the browser, browsers uses ES.

---

#### Tooling

Rust tools:

Pro: The Biome eco is amazing!

https://github.com/biomejs/biome

---

https://github.com/oxc-project/oxc

---

#### Bundlers

```
A bundler is a development tool
that combines many JavaScript code files
into a single one that is production-ready
loadable in the browser.
```

https://snipcart.com/blog/javascript-module-bundler#top-5-javascript-module-bundlers

https://esbuild.github.io/

https://turbo.build/

---

#### Compression

https://swc.rs/playground

** Brotli vs. GZIP vs. Zopfli **

https://dev.to/codingcrafts/brotli-vs-gzip-vs-zopfli-comparing-javascript-compression-techniques-1fo2

---

### JSDoc

https://jsdoc.app/index.html

https://jsdoc.app/about-getting-started.html

https://codedamn.com/news/javascript/the-benefits-of-using-jsdoc-for-commenting-your-javascript-code

---

### eslint

https://eslint.org/

Personal configs
<br>
https://eslint.org/docs/latest/use/configure/configuration-files#personal-configuration-files-deprecated

---

### ES6

https://www.sitepoint.com/understanding-es6-modules/#usinges6modulesinnodejs

https://hacks.mozilla.org/2015/08/es6-in-depth-modules/

```
To use modules today, you’ll need a compiler such as Traceur or Babel
```

https://nodejs.org/docs/latest/api/esm.html#esm_differences_between_es_modules_and_commonjs

https://stackoverflow.com/questions/57492546/what-is-the-difference-between-js-and-mjs-files

---

### Compilers

https://babel.dev/

https://github.com/google/traceur-compiler

---

### Logging

https://github.com/pinojs/pino

### Dates

https://github.com/moment/luxon/

---

https://day.js.org

---

https://github.com/moment/moment

---

### Others

Embedded JavaScript templates

https://github.com/mde/ejs

---

Async utilities for node and the browser

https://github.com/caolan/async

---

    Financial Charts

    https://github.com/tradingview/lightweight-charts

---

https://lit.dev/

---

https://github.com/eslint/eslint.git

---

https://github.com/nolimits4web/Swiper

---

### Communities and conferences

https://js13kgames.com/

https://risingstars.js.org/

---
