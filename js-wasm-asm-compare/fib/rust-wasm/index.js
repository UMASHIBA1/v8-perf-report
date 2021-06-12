const rustWasm = require("./pkg/rust_wasm");

console.log(rustWasm.fib(BigInt(40)));