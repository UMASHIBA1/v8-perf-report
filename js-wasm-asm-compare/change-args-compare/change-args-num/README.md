# 引数の数の違いによるアセンブリの変化を調べる
引数の数を変えた場合jsとwasmの橋渡しの部分がどんな形で変わるのか調べる

## 実行環境

```
Window上のVMWare Workstation 16 Player上のUbuntu20.04.2 LTS
Memory 8GB割り当て
Processor Intel® Core™ i7-9700 CPU @ 3.00GHzの2コアを割り当て
```

<img src="https://user-images.githubusercontent.com/49422601/119885136-63670080-bf6c-11eb-8948-6f6aa17e5a34.png" width="600px">


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




## 対象コード(引数が1つ)

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

