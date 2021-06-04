# list every calculation

## 実行環境

```
Window上のVMWare Workstation 16 Player上のUbuntu20.04.2 LTS
Memory 8GB割り当て
Processor Intel® Core™ i7-9700 CPU @ 3.00GHzの2コアを割り当て
```

<img src="https://user-images.githubusercontent.com/49422601/119885136-63670080-bf6c-11eb-8948-6f6aa17e5a34.png" width="600px">

## code
```javascript
const calledFunc = (lst) => {
    lst.every((i) => typeof i === "number");
};

const funcCall = () => {
    const numLst = [...Array(5000000)].map((_, i) => i);
    const lst = [];
    for (let i = 0; i < 100; i++) {
        calledFunc(numLst);
    }
    console.log(lst);
}

funcCall();
```

## stat command

```shell
sudo perf stat out/x64.release/d8 --perf-prof --no-write-protect-code-memory lst-every.js 
```

```shell
 Performance counter stats for 'out/x64.release/d8 --perf-prof --no-write-protect-code-memory lst-every.js':

          5,479.12 msec task-clock                #    0.998 CPUs utilized          
               264      context-switches          #    0.048 K/sec                  
                 0      cpu-migrations            #    0.000 K/sec                  
            18,253      page-faults               #    0.003 M/sec                  
    24,818,669,529      cycles                    #    4.530 GHz                    
    76,630,653,215      instructions              #    3.09  insn per cycle         
    20,758,412,282      branches                  # 3788.638 M/sec                  
           255,319      branch-misses             #    0.00% of all branches        

       5.491397616 seconds time elapsed

       5.450803000 seconds user
       0.027932000 seconds sys

```

## record command

```
sudo perf record -g -k mono out/x64.release/d8 --perf-prof --no-write-protect-code-memory lst-every.js 
sudo perf inject -j -i perf.data -o perf.data.jitted
sudo perf report --sort dso, comm -g fractal,0.5,caller -i perf.data.jitted
```

[record, report command result](https://github.com/UMASHIBA1/v8-perf-report/blob/main/lst-every/lst-every-perf-report.txt)