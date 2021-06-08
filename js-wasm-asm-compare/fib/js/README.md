# Nodeで調査

## 参考
https://asciinema.org/a/80401

動画で実行していたコード
```
perf record -- node --perf-basic-prof --print-code --redirect-code-traces /tmp/fib.js
perf report --objdump=$HOME/src/chr/v8/tools/objdump-v8
```
 
## my evaluation code
```
sudo perf record -- node --perf-basic-prof-only-functions --print-code --redirect-code-traces add-roop.js
sudo perf report --objdump=../../../v8/tools/objdump-v8  > perf-report.txt
```

