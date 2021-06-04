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
    const checkIsNumber = (i) => {
        return typeof i === "number";
    }
    lst.every(checkIsNumber);
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

          5,472.43 msec task-clock                #    0.998 CPUs utilized          
               193      context-switches          #    0.035 K/sec                  
                 0      cpu-migrations            #    0.000 K/sec                  
            18,254      page-faults               #    0.003 M/sec                  
    24,804,353,486      cycles                    #    4.533 GHz                    
    76,629,463,584      instructions              #    3.09  insn per cycle         
    20,758,198,874      branches                  # 3793.232 M/sec                  
           253,680      branch-misses             #    0.00% of all branches        

       5.484703515 seconds time elapsed

       5.432361000 seconds user
       0.039914000 seconds sys

```

## record command

```
sudo perf record -g -k mono out/x64.release/d8 --perf-prof --no-write-protect-code-memory lst-every.js 
sudo perf inject -j -i perf.data -o perf.data.jitted
sudo perf report --sort dso, comm -g fractal,0.5,caller -i perf.data.jitted
```

[record, report command result](https://github.com/UMASHIBA1/v8-perf-report/blob/main/lst-every/lst-every-perf-report.txt)