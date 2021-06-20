# 引数の数の違いによるアセンブリの変化を調べる
引数の数を変えた場合jsとwasmの橋渡しの部分がどんな形で変わるのか調べる

## 対象コード(引数が２つ)

AssemblyScript
```
export function arg1(a: i32): i32 {
  return 0;
}
```

JavaScript
```javascript
const fs = require("fs");
const loader = require("@assemblyscript/loader");
const imports = { /* imports go here */ };
const wasmModule = loader.instantiateSync(fs.readFileSync(__dirname + "/build/optimized.wasm"), imports);
module.exports = wasmModule.exports;

const result = module.exports.arg1(1);

console.log(result);
```

## 実行したスクリプト
```
sudo perf record -- node --perf-basic-prof-only-functions --print-code --redirect-code-traces index.js
sudo perf report > report.txt
```




## 対象コード(引数が２つ)

AssemblyScript
```
export function arg2(a: i32, b: i32): i32 {
  return 0;
}
```

JavaScript
```javascript
const fs = require("fs");
const loader = require("@assemblyscript/loader");
const imports = { /* imports go here */ };
const wasmModule = loader.instantiateSync(fs.readFileSync(__dirname + "/build/optimized.wasm"), imports);
module.exports = wasmModule.exports;

const result = module.exports.arg2(1,2);

console.log(result);
```

## 実行したスクリプト
```
sudo perf record -- node --perf-basic-prof-only-functions --print-code --redirect-code-traces index.js
sudo perf report > report.txt
```

