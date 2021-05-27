# add 計算について

## 関数呼び出しのない版

```javascript
let total = 0;

for (let i = 0; i < 10000000; i++) {
  total += 1;
}
console.log(total);
```

### stat コマンドでの計測

```shell
sudo perf stat out/x64.release/d8 --perf-prof --no-write-protect-code-memory test.js
```

```shell
10000000

 Performance counter stats for 'out/x64.release/d8 --perf-prof --no-write-protect-code-memory test.js':

             44.00 msec task-clock                #    0.412 CPUs utilized
               137      context-switches          #    0.003 M/sec
                 0      cpu-migrations            #    0.000 K/sec
             3,687      page-faults               #    0.084 M/sec
       141,392,722      cycles                    #    3.214 GHz
       295,693,843      instructions              #    2.09  insn per cycle
        92,160,940      branches                  # 2094.802 M/sec
           212,393      branch-misses             #    0.23% of all branches

       0.106679037 seconds time elapsed

       0.012914000 seconds user
       0.032287000 seconds sys


```

### record, report コマンドでの計測

```shell
sudo perf record -g -k mono out/x64.release/d8 --perf-prof --no-write-protect-code-memory test.js
sudo perf report --sort dso, comm -g fractal,0.5,caller
```

[record, report コマンドの結果のリンク](https://github.com/UMASHIBA1/v8-perf-report/tree/main/add-test/no-func-add-perf-report.txt)
