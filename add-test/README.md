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
sudo perf stat out/x64.release/d8 --perf-prof --no-write-protect-code-memory test2.js
```

```shell
10000000000

 Performance counter stats for 'out/x64.release/d8 --perf-prof --no-write-protect-code-memory test2.js':

         79,612.57 msec task-clock                #    0.999 CPUs utilized
           379,917      context-switches          #    0.005 M/sec
                 2      cpu-migrations            #    0.000 K/sec
             4,662      page-faults               #    0.059 K/sec
   353,945,945,272      cycles                    #    4.446 GHz
   941,536,253,168      instructions              #    2.66  insn per cycle
   183,455,639,652      branches                  # 2304.355 M/sec
        44,438,066      branch-misses             #    0.02% of all branches

      79.694331920 seconds time elapsed

      78.668187000 seconds user
       0.939174000 seconds sys

```

### record, report コマンドでの計測

```shell
sudo perf record -g -k mono out/x64.release/d8 --perf-prof --no-write-protect-code-memory test2.js
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

          8,725.64 msec task-clock                #    0.993 CPUs utilized          
               288      context-switches          #    0.033 K/sec                  
                 0      cpu-migrations            #    0.000 K/sec                  
             3,752      page-faults               #    0.430 K/sec                  
    39,689,008,071      cycles                    #    4.549 GHz                    
    95,131,233,685      instructions              #    2.40  insn per cycle         
    34,311,176,375      branches                  # 3932.226 M/sec                  
           396,547      branch-misses             #    0.00% of all branches        

       8.791098575 seconds time elapsed

       8.694314000 seconds user
       0.031949000 seconds sys


```

### record, report コマンドでの計測

```shell
sudo perf record -g -k mono out/x64.release/d8 --perf-prof --no-write-protect-code-memory test.js
sudo perf report --sort dso, comm -g fractal,0.5,caller
```

[record, report コマンドの結果のリンク](https://github.com/UMASHIBA1/v8-perf-report/tree/main/add-test/call-func-add-perf-report.txt)
