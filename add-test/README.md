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

          9,301.68 msec task-clock                #    0.999 CPUs utilized          
               180      context-switches          #    0.019 K/sec                  
                 0      cpu-migrations            #    0.000 K/sec                  
             3,632      page-faults               #    0.390 K/sec                  
    40,919,561,188      cycles                    #    4.399 GHz                    
    95,103,244,928      instructions              #    2.32  insn per cycle         
    34,306,490,735      branches                  # 3688.203 M/sec                  
           353,807      branch-misses             #    0.00% of all branches        

       9.315403215 seconds time elapsed

       9.284785000 seconds user
       0.015994000 seconds sys

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
sudo perf inject -j -i perf.data -o perf.data.jitted
sudo perf report --sort dso, comm -g fractal,0.5,caller -i perf.data.jitted
```

[record, report コマンドの結果のリンク](https://github.com/UMASHIBA1/v8-perf-report/tree/main/add-test/call-func-add-perf-report.txt)
