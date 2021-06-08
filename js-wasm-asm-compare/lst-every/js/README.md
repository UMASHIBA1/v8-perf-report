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
sudo perf record -- node --perf-basic-prof-only-functions --print-code --redirect-code-traces lst-every.js
sudo perf report --objdump=../../../v8/tools/objdump-v8  > perf-report.txt
```

checkIsNumber
```
--- Raw source ---
(i) => {
        return typeof i === "number";
    }


--- Optimized code ---
optimization_id = 2
source_position = 56
kind = OPTIMIZED_FUNCTION
name = checkIsNumber
stack_slots = 6
compiler = turbofan
address = 0x27bbbf2031e1

Instructions (size = 192)
0x27bbbf203240     0  488b59c0       REX.W movq rbx,[rcx-0x40]
0x27bbbf203244     4  f6430f01       testb [rbx+0xf],0x1
0x27bbbf203248     8  740d           jz 0x27bbbf203257  <+0x17>
0x27bbbf20324a     a  49ba00cc3b0100000000 REX.W movq r10,0x13bcc00  (CompileLazyDeoptimizedCode)
0x27bbbf203254    14  41ffe2         jmp r10
0x27bbbf203257    17  55             push rbp
0x27bbbf203258    18  4889e5         REX.W movq rbp,rsp
0x27bbbf20325b    1b  56             push rsi
0x27bbbf20325c    1c  57             push rdi
0x27bbbf20325d    1d  4883ec10       REX.W subq rsp,0x10
0x27bbbf203261    21  493b65e0       REX.W cmpq rsp,[r13-0x20] (external value (StackGuard::address_of_jslimit()))
0x27bbbf203265    25  0f8642000000   jna 0x27bbbf2032ad  <+0x6d>
0x27bbbf20326b    2b  488b5510       REX.W movq rdx,[rbp+0x10]
0x27bbbf20326f    2f  f6c201         testb rdx,0x1
0x27bbbf203272    32  0f8416000000   jz 0x27bbbf20328e  <+0x4e>
0x27bbbf203278    38  488b52ff       REX.W movq rdx,[rdx-0x1]
0x27bbbf20327c    3c  493995c0000000 REX.W cmpq [r13+0xc0] (root (heap_number_map)),rdx
0x27bbbf203283    43  0f94c0         setzl al
0x27bbbf203286    46  0fb6c0         movzxbl rax,rax
0x27bbbf203289    49  e905000000     jmp 0x27bbbf203293  <+0x53>
0x27bbbf20328e    4e  b801000000     movl rax,0x1
0x27bbbf203293    53  83f800         cmpl rax,0x0
0x27bbbf203296    56  0f850b000000   jnz 0x27bbbf2032a7  <+0x67>
0x27bbbf20329c    5c  498b4540       REX.W movq rax,[r13+0x40] (root (false_value))
0x27bbbf2032a0    60  488be5         REX.W movq rsp,rbp
0x27bbbf2032a3    63  5d             pop rbp
0x27bbbf2032a4    64  c21000         ret 0x10
0x27bbbf2032a7    67  498b4538       REX.W movq rax,[r13+0x38] (root (true_value))
0x27bbbf2032ab    6b  ebf3           jmp 0x27bbbf2032a0  <+0x60>
0x27bbbf2032ad    6d  48ba0000000018000000 REX.W movq rdx,0x1800000000
0x27bbbf2032b7    77  52             push rdx
0x27bbbf2032b8    78  48897de8       REX.W movq [rbp-0x18],rdi
0x27bbbf2032bc    7c  488975e0       REX.W movq [rbp-0x20],rsi
0x27bbbf2032c0    80  b801000000     movl rax,0x1
0x27bbbf2032c5    85  48bb30c1070100000000 REX.W movq rbx,0x107c130
0x27bbbf2032cf    8f  488bd6         REX.W movq rdx,rsi
0x27bbbf2032d2    92  48be21010c69e3130000 REX.W movq rsi,0x13e3690c0121    ;; object: 0x13e3690c0121 <NativeContext[239]>
0x27bbbf2032dc    9c  488bc8         REX.W movq rcx,rax
0x27bbbf2032df    9f  49ba4032420100000000 REX.W movq r10,0x1423240  (CEntry_Return1_DontSaveFPRegs_ArgvOnStack_NoBuiltinExit)
0x27bbbf2032e9    a9  41ffd2         call r10
0x27bbbf2032ec    ac  e97affffff     jmp 0x27bbbf20326b  <+0x2b>
0x27bbbf2032f1    b1  90             nop
0x27bbbf2032f2    b2  49c7c500000000 REX.W movq r13,0x0      ;; debug: deopt position, script offset '56'
                                                             ;; debug: deopt position, inlining id '-1'
                                                             ;; debug: deopt reason '(unknown)'
                                                             ;; debug: deopt index 0
0x27bbbf2032f9    b9  e862ed0700     call 0x27bbbf282060     ;; lazy deoptimization bailout
0x27bbbf2032fe    be  6690           nop

Source positions:
 pc offset  position
         0        56
        2b        73
        53       102
        6d        56

Inlined functions (count = 0)

Deoptimization Input Data (deopt points = 1)
 index  bytecode-offset    pc
     0               -1    ac 

Safepoints (size = 21)
0x27bbbf2032ec      ac    b2  110000 (sp -> fp)       0

RelocInfo (size = 26)
0x27bbbf2032d4  full embedded object  (0x13e3690c0121 <NativeContext[239]>)
0x27bbbf2032f2  deopt script offset  (56)
0x27bbbf2032f2  deopt inlining id  (-1)
0x27bbbf2032f2  deopt reason  ((unknown))
0x27bbbf2032f2  deopt index
0x27bbbf2032fa  runtime entry  (lazy deoptimization bailout)

--- End code ---

```