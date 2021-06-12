--- Raw source ---
(n) {
  if (n <= 1) {
    return n;
  }
  return fib(n - 1) + fib(n - 2);
};

--- Optimized code ---
optimization_id = 0
source_position = 77
kind = OPTIMIZED_FUNCTION
name = fib
stack_slots = 7
compiler = turbofan
address = 0xee60a543321

Instructions (size = 456)
0xee60a543380     0  488b59c0       REX.W movq rbx,[rcx-0x40]
0xee60a543384     4  f6430f01       testb [rbx+0xf],0x1
0xee60a543388     8  740d           jz 0xee60a543397  <+0x17>
0xee60a54338a     a  49ba00cc3b0100000000 REX.W movq r10,0x13bcc00  (CompileLazyDeoptimizedCode)
0xee60a543394    14  41ffe2         jmp r10
0xee60a543397    17  55             push rbp
0xee60a543398    18  4889e5         REX.W movq rbp,rsp
0xee60a54339b    1b  56             push rsi
0xee60a54339c    1c  57             push rdi
0xee60a54339d    1d  4883ec18       REX.W subq rsp,0x18
0xee60a5433a1    21  488975e8       REX.W movq [rbp-0x18],rsi
0xee60a5433a5    25  493b65e0       REX.W cmpq rsp,[r13-0x20] (external value (StackGuard::address_of_jslimit()))
0xee60a5433a9    29  0f86f2000000   jna 0xee60a5434a1  <+0x121>
0xee60a5433af    2f  488b4510       REX.W movq rax,[rbp+0x10]
0xee60a5433b3    33  a801           test al,0x1
0xee60a5433b5    35  0f8520010000   jnz 0xee60a5434db  <+0x15b>
0xee60a5433bb    3b  48b90000000001000000 REX.W movq rcx,0x100000000
0xee60a5433c5    45  483bc1         REX.W cmpq rax,rcx
0xee60a5433c8    48  0f8ed1000000   jle 0xee60a54349f  <+0x11f>
0xee60a5433ce    4e  488bc8         REX.W movq rcx,rax
0xee60a5433d1    51  48c1e920       REX.W shrq rcx, 32
0xee60a5433d5    55  4c8bc1         REX.W movq r8,rcx
0xee60a5433d8    58  4183e801       subl r8,0x1
0xee60a5433dc    5c  0f8005010000   jo 0xee60a5434e7  <+0x167>
0xee60a5433e2    62  48bfb9f7cc52660f0000 REX.W movq rdi,0xf6652ccf7b9    ;; object: 0x0f6652ccf7b9 <JSFunction fib (sfi = 0x1dcc9ef21251)>
0xee60a5433ec    6c  488b771f       REX.W movq rsi,[rdi+0x1f]
0xee60a5433f0    70  49c1e020       REX.W shlq r8, 32
0xee60a5433f4    74  49b921271025ce3f0000 REX.W movq r9,0x3fce25102721    ;; object: 0x3fce25102721 <JSGlobal Object>
0xee60a5433fe    7e  4151           push r9
0xee60a543400    80  4150           push r8
0xee60a543402    82  48894dd8       REX.W movq [rbp-0x28],rcx
0xee60a543406    86  498b5520       REX.W movq rdx,[r13+0x20] (root (undefined_value))
0xee60a54340a    8a  4c8bc0         REX.W movq r8,rax
0xee60a54340d    8d  b801000000     movl rax,0x1
0xee60a543412    92  4c8bdf         REX.W movq r11,rdi
0xee60a543415    95  4c8be2         REX.W movq r12,rdx
0xee60a543418    98  488b4f2f       REX.W movq rcx,[rdi+0x2f]
0xee60a54341c    9c  4883c15f       REX.W addq rcx,0x5f
0xee60a543420    a0  ffd1           call rcx
0xee60a543422    a2  488945e0       REX.W movq [rbp-0x20],rax
0xee60a543426    a6  488b4dd8       REX.W movq rcx,[rbp-0x28]
0xee60a54342a    aa  83e902         subl rcx,0x2
0xee60a54342d    ad  0f80cc000000   jo 0xee60a5434ff  <+0x17f>
0xee60a543433    b3  48bfb9f7cc52660f0000 REX.W movq rdi,0xf6652ccf7b9    ;; object: 0x0f6652ccf7b9 <JSFunction fib (sfi = 0x1dcc9ef21251)>
0xee60a54343d    bd  488b771f       REX.W movq rsi,[rdi+0x1f]
0xee60a543441    c1  48c1e120       REX.W shlq rcx, 32
0xee60a543445    c5  49b821271025ce3f0000 REX.W movq r8,0x3fce25102721    ;; object: 0x3fce25102721 <JSGlobal Object>
0xee60a54344f    cf  4150           push r8
0xee60a543451    d1  51             push rcx
0xee60a543452    d2  b801000000     movl rax,0x1
0xee60a543457    d7  498b5520       REX.W movq rdx,[r13+0x20] (root (undefined_value))
0xee60a54345b    db  488b4f2f       REX.W movq rcx,[rdi+0x2f]
0xee60a54345f    df  4883c15f       REX.W addq rcx,0x5f
0xee60a543463    e3  ffd1           call rcx
0xee60a543465    e5  488b4de0       REX.W movq rcx,[rbp-0x20]
0xee60a543469    e9  f6c101         testb rcx,0x1
0xee60a54346c    ec  0f85a5000000   jnz 0xee60a543517  <+0x197>
0xee60a543472    f2  a801           test al,0x1
0xee60a543474    f4  0f85a9000000   jnz 0xee60a543523  <+0x1a3>
0xee60a54347a    fa  4c8bc0         REX.W movq r8,rax
0xee60a54347d    fd  49c1e820       REX.W shrq r8, 32
0xee60a543481   101  4c8bc9         REX.W movq r9,rcx
0xee60a543484   104  49c1e920       REX.W shrq r9, 32
0xee60a543488   108  4503c1         addl r8,r9
0xee60a54348b   10b  0f809e000000   jo 0xee60a54352f  <+0x1af>
0xee60a543491   111  49c1e020       REX.W shlq r8, 32
0xee60a543495   115  498bc0         REX.W movq rax,r8
0xee60a543498   118  488be5         REX.W movq rsp,rbp
0xee60a54349b   11b  5d             pop rbp
0xee60a54349c   11c  c21000         ret 0x10
0xee60a54349f   11f  ebf7           jmp 0xee60a543498  <+0x118>
0xee60a5434a1   121  48b90000000028000000 REX.W movq rcx,0x2800000000
0xee60a5434ab   12b  51             push rcx
0xee60a5434ac   12c  b801000000     movl rax,0x1
0xee60a5434b1   131  48bb30c1070100000000 REX.W movq rbx,0x107c130
0xee60a5434bb   13b  48be2101a0b956360000 REX.W movq rsi,0x3656b9a00121    ;; object: 0x3656b9a00121 <NativeContext[239]>
0xee60a5434c5   145  488bc8         REX.W movq rcx,rax
0xee60a5434c8   148  49ba4032420100000000 REX.W movq r10,0x1423240  (CEntry_Return1_DontSaveFPRegs_ArgvOnStack_NoBuiltinExit)
0xee60a5434d2   152  41ffd2         call r10
0xee60a5434d5   155  e9d5feffff     jmp 0xee60a5433af  <+0x2f>
0xee60a5434da   15a  90             nop
0xee60a5434db   15b  49c7c500000000 REX.W movq r13,0x0       ;; debug: deopt position, script offset '91'
                                                             ;; debug: deopt position, inlining id '-1'
                                                             ;; debug: deopt reason 'not a Smi'
                                                             ;; debug: deopt index 0
0xee60a5434e2   162  e879eb0300     call 0xee60a582060       ;; eager deoptimization bailout
0xee60a5434e7   167  49c7c501000000 REX.W movq r13,0x1       ;; debug: deopt position, script offset '132'
                                                             ;; debug: deopt position, inlining id '-1'
                                                             ;; debug: deopt reason 'overflow'
                                                             ;; debug: deopt index 1
0xee60a5434ee   16e  e86deb0300     call 0xee60a582060       ;; eager deoptimization bailout
0xee60a5434f3   173  49c7c502000000 REX.W movq r13,0x2       ;; debug: deopt position, script offset '126'
                                                             ;; debug: deopt position, inlining id '-1'
                                                             ;; debug: deopt reason '(unknown)'
                                                             ;; debug: deopt index 2
0xee60a5434fa   17a  e861eb0700     call 0xee60a5c2060       ;; lazy deoptimization bailout
0xee60a5434ff   17f  49c7c503000000 REX.W movq r13,0x3       ;; debug: deopt position, script offset '145'
                                                             ;; debug: deopt position, inlining id '-1'
                                                             ;; debug: deopt reason 'overflow'
                                                             ;; debug: deopt index 3
0xee60a543506   186  e855eb0300     call 0xee60a582060       ;; eager deoptimization bailout
0xee60a54350b   18b  49c7c504000000 REX.W movq r13,0x4       ;; debug: deopt position, script offset '139'
                                                             ;; debug: deopt position, inlining id '-1'
                                                             ;; debug: deopt reason '(unknown)'
                                                             ;; debug: deopt index 4
0xee60a543512   192  e849eb0700     call 0xee60a5c2060       ;; lazy deoptimization bailout
0xee60a543517   197  49c7c505000000 REX.W movq r13,0x5       ;; debug: deopt position, script offset '137'
                                                             ;; debug: deopt position, inlining id '-1'
                                                             ;; debug: deopt reason 'not a Smi'
                                                             ;; debug: deopt index 5
0xee60a54351e   19e  e83deb0300     call 0xee60a582060       ;; eager deoptimization bailout
0xee60a543523   1a3  49c7c506000000 REX.W movq r13,0x6       ;; debug: deopt position, script offset '137'
                                                             ;; debug: deopt position, inlining id '-1'
                                                             ;; debug: deopt reason 'not a Smi'
                                                             ;; debug: deopt index 6
0xee60a54352a   1aa  e831eb0300     call 0xee60a582060       ;; eager deoptimization bailout
0xee60a54352f   1af  49c7c507000000 REX.W movq r13,0x7       ;; debug: deopt position, script offset '137'
                                                             ;; debug: deopt position, inlining id '-1'
                                                             ;; debug: deopt reason 'overflow'
                                                             ;; debug: deopt index 7
0xee60a543536   1b6  e825eb0300     call 0xee60a582060       ;; eager deoptimization bailout
0xee60a54353b   1bb  49c7c508000000 REX.W movq r13,0x8       ;; debug: deopt position, script offset '77'
                                                             ;; debug: deopt position, inlining id '-1'
                                                             ;; debug: deopt reason '(unknown)'
                                                             ;; debug: deopt index 8
0xee60a543542   1c2  e819eb0700     call 0xee60a5c2060       ;; lazy deoptimization bailout
0xee60a543547   1c7  90             nop

Source positions:
 pc offset  position
         0        77
        2f        91
        4e       132
        62       126
        a2       145
        b3       139
        e5       137
       111       150
       11f       112
       121        77

Inlined functions (count = 0)

Deoptimization Input Data (deopt points = 9)
 index  bytecode-offset    pc
     0                2    NA 
     1                2    NA 
     2               23    a2 
     3               37    NA 
     4               42    e5 
     5               46    NA 
     6               46    NA 
     7               46    NA 
     8               -1   155 

Safepoints (size = 47)
0xee60a543422      a2   173  0010000 (sp -> fp)       2
0xee60a543465      e5   18b  0110000 (sp -> fp)       4
0xee60a5434d5     155   1bb  0010000 (sp -> fp)       8

RelocInfo (size = 216)
0xee60a5433e4  full embedded object  (0x0f6652ccf7b9 <JSFunction fib (sfi = 0x1dcc9ef21251)>)
0xee60a5433f6  full embedded object  (0x3fce25102721 <JSGlobal Object>)
0xee60a543435  full embedded object  (0x0f6652ccf7b9 <JSFunction fib (sfi = 0x1dcc9ef21251)>)
0xee60a543447  full embedded object  (0x3fce25102721 <JSGlobal Object>)
0xee60a5434bd  full embedded object  (0x3656b9a00121 <NativeContext[239]>)
0xee60a5434db  deopt script offset  (91)
0xee60a5434db  deopt inlining id  (-1)
0xee60a5434db  deopt reason  (not a Smi)
0xee60a5434db  deopt index
0xee60a5434e3  runtime entry  (eager deoptimization bailout)
0xee60a5434e7  deopt script offset  (132)
0xee60a5434e7  deopt inlining id  (-1)
0xee60a5434e7  deopt reason  (overflow)
0xee60a5434e7  deopt index
0xee60a5434ef  runtime entry  (eager deoptimization bailout)
0xee60a5434f3  deopt script offset  (126)
0xee60a5434f3  deopt inlining id  (-1)
0xee60a5434f3  deopt reason  ((unknown))
0xee60a5434f3  deopt index
0xee60a5434fb  runtime entry  (lazy deoptimization bailout)
0xee60a5434ff  deopt script offset  (145)
0xee60a5434ff  deopt inlining id  (-1)
0xee60a5434ff  deopt reason  (overflow)
0xee60a5434ff  deopt index
0xee60a543507  runtime entry  (eager deoptimization bailout)
0xee60a54350b  deopt script offset  (139)
0xee60a54350b  deopt inlining id  (-1)
0xee60a54350b  deopt reason  ((unknown))
0xee60a54350b  deopt index
0xee60a543513  runtime entry  (lazy deoptimization bailout)
0xee60a543517  deopt script offset  (137)
0xee60a543517  deopt inlining id  (-1)
0xee60a543517  deopt reason  (not a Smi)
0xee60a543517  deopt index
0xee60a54351f  runtime entry  (eager deoptimization bailout)
0xee60a543523  deopt script offset  (137)
0xee60a543523  deopt inlining id  (-1)
0xee60a543523  deopt reason  (not a Smi)
0xee60a543523  deopt index
0xee60a54352b  runtime entry  (eager deoptimization bailout)
0xee60a54352f  deopt script offset  (137)
0xee60a54352f  deopt inlining id  (-1)
0xee60a54352f  deopt reason  (overflow)
0xee60a54352f  deopt index
0xee60a543537  runtime entry  (eager deoptimization bailout)
0xee60a54353b  deopt script offset  (77)
0xee60a54353b  deopt inlining id  (-1)
0xee60a54353b  deopt reason  ((unknown))
0xee60a54353b  deopt index
0xee60a543543  runtime entry  (lazy deoptimization bailout)

--- End code ---
