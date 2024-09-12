# Node

## Summary

Node.js Server Architecture
Node.js is an open-source, cross-platform JavaScript runtime environment built on Google's V8 JavaScript engine. It is primarily used for developing I/O-intensive web applications such as chat apps, multimedia streaming sites, and other web apps. The key aspects of Node.js architecture are: Asynchronous Model
Node.js employs an asynchronous, event-driven model to handle concurrent client requests efficiently. This allows Node.js to scale well and handle a large number of requests without creating multiple threads. Non-Blocking I/O Operations
Node.js uses a non-blocking I/O model, which means that it can perform I/O operations (such as reading/writing to the file system, making network calls, etc.) without blocking the main thread. This helps improve the overall performance and throughput of the application. Components of Node.js Architecture

    Requests: Incoming client requests can be either blocking (complex) or non-blocking (simple) in nature.
    Node.js Server: The Node.js server accepts user requests, processes them, and returns the results to the clients.
    Event Queue: The Event Queue stores the incoming client requests and passes them sequentially to the Event Loop.
    Thread Pool: The Thread Pool contains the threads available for performing operations required to process blocking requests that need external resources.
    Event Loop: The Event Loop receives requests from the Event Queue, processes non-blocking requests, and assigns blocking requests to the Thread Pool.
    External Resources: These are the resources (computation, storage, etc.) required to handle blocking client requests.

Workflow of Node.js Architecture

    Clients send requests (blocking or non-blocking) to the Node.js server.
    The requests are added to the Event Queue.
    The Event Loop retrieves requests from the Event Queue and processes them:
        For non-blocking requests, the Event Loop handles them directly and returns the response to the client.
        For blocking requests, the Event Loop assigns a single thread from the Thread Pool to handle the request using external resources.
    Once the blocking request is completed, the response is sent back to the Event Loop, which then delivers it to the client.

Advantages of Node.js Architecture

    Efficient Handling of Concurrent Requests: The use of the Event Queue and Thread Pool allows Node.js to efficiently handle a large number of concurrent client requests.
    No Need for Multiple Threads: The Event Loop processes requests one-by-one, so there is no need to create multiple threads. A single thread is sufficient to handle a blocking request.
    Lower Memory and Resource Consumption: The asynchronous, non-blocking nature of Node.js helps reduce memory and server resource consumption, as requests are handled one at a time.

Overall, the Node.js architecture is designed to provide efficient, scalable, and resource-optimized server-side applications, making it a popular choice for building I/O-intensive web applications.

---

## Using Corepack

https://nodejs.org/api/corepack.html

-   https://pnpm.io/installation#using-corepack

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

### pnpm

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
