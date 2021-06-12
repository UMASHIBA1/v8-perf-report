# add calc assembly research
## 実行環境

```
Window上のVMWare Workstation 16 Player上のUbuntu20.04.2 LTS
Memory 8GB割り当て
Processor Intel® Core™ i7-9700 CPU @ 3.00GHzの2コアを割り当て
```

<img src="https://user-images.githubusercontent.com/49422601/119885136-63670080-bf6c-11eb-8948-6f6aa17e5a34.png" width="600px">

## code
https://github.com/UMASHIBA1/v8-perf-report/tree/main/js-wasm-asm-compare/add-roop/add-roop.js

## 参考

https://asciinema.org/a/80401

動画で実行していたスクリプト

```
perf record -- node --perf-basic-prof --print-code --redirect-code-traces /tmp/fib.js
perf report --objdump=$HOME/src/chr/v8/tools/objdump-v8
```

## 自分が実行したスクリプト

```
sudo perf record -- node --perf-basic-prof-only-functions --print-code --redirect-code-traces lst-every.js
sudo perf report --objdump=../../../../v8/tools/objdump-v8  > perf-report.txt
```
