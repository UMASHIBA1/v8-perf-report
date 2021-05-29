# add 計算について

## 実行環境

```
Window上のVMWare Workstation 16 Player上のUbuntu20.04.2 LTS
Memory 8GB割り当て
Processor Intel® Core™ i7-9700 CPU @ 3.00GHzの2コアを割り当て
```

<img src="https://user-images.githubusercontent.com/49422601/119885136-63670080-bf6c-11eb-8948-6f6aa17e5a34.png" width="600px">

## 関数呼び出しのない版

```javascript
let total = 0;

for (let i = 0; i < 10000000000; i++) {
  total = total + 1;
}
console.log(total);
```

### stat コマンドでの計測

```shell
sudo perf stat out/x64.release/d8 --perf-prof --no-write-protect-code-memory test.js
```

```shell

```

### record, report コマンドでの計測

```shell
sudo perf record -g -k mono out/x64.release/d8 --perf-prof --no-write-protect-code-memory test.js
sudo perf inject -j -i perf.data -o perf.data.jitted
sudo perf report --sort dso, comm -g fractal,0.5,caller -i perf.data.jitted
```

[record, report コマンドの結果のリンク](https://github.com/UMASHIBA1/v8-perf-report/tree/main/add-test/no-func-add-perf-report.txt)

## 関数呼び出しで計算する版

```javascript
let total = 0;

const add = (a, b) => {
  return a + b;
};

for (let i = 0; i < 10000000000; i++) {
  total = add(total, 1);
}
console.log(total);
```

### stat コマンドでの計測

```shell
sudo perf stat out/x64.release/d8 --perf-prof --no-write-protect-code-memory test.js
```

```shell
10000000000

 Performance counter stats for 'out/x64.release/d8 --perf-prof --no-write-protect-code-memory test.js':

         68,689.29 msec task-clock                #    1.010 CPUs utilized
           223,990      context-switches          #    0.003 M/sec
                 5      cpu-migrations            #    0.000 K/sec
             4,659      page-faults               #    0.068 K/sec
   301,938,277,387      cycles                    #    4.396 GHz
   941,659,644,166      instructions              #    3.12  insn per cycle
   183,245,782,063      branches                  # 2667.749 M/sec
        47,833,184      branch-misses             #    0.03% of all branches

      68.017509891 seconds time elapsed

      45.631521000 seconds user
      23.338909000 seconds sys
```

### record, report コマンドでの計測

```shell
sudo perf record -g -k mono out/x64.release/d8 --perf-prof --no-write-protect-code-memory test.js
sudo perf report --sort dso, comm -g fractal,0.5,caller
```

[record, report コマンドの結果のリンク](https://github.com/UMASHIBA1/v8-perf-report/tree/main/add-test/call-func-add-perf-report.txt)
