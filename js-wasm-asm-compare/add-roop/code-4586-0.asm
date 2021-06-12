--- Raw source ---
const add = function(a, b) {
    return a + b;
}

const iterationNum = 100000000;

let total = 0;
for (let i = 1; i <= iterationNum; i++) {
    total = add(total, i);
} 

--- Optimized code ---
optimization_id = 0
source_position = 0
kind = OPTIMIZED_FUNCTION
stack_slots = 14
compiler = turbofan
address = 0x2270fb142fa1

Instructions (size = 512)
0x2270fb143000     0  488b59c0       REX.W movq rbx,[rcx-0x40]
0x2270fb143004     4  f6430f01       testb [rbx+0xf],0x1
0x2270fb143008     8  740d           jz 0x2270fb143017  <+0x17>
0x2270fb14300a     a  49ba00cc3b0100000000 REX.W movq r10,0x13bcc00  (CompileLazyDeoptimizedCode)
0x2270fb143014    14  41ffe2         jmp r10
0x2270fb143017    17  55             push rbp
0x2270fb143018    18  4889e5         REX.W movq rbp,rsp
0x2270fb14301b    1b  56             push rsi
0x2270fb14301c    1c  57             push rdi
0x2270fb14301d    1d  48ba0000000021000000 REX.W movq rdx,0x2100000000
0x2270fb143027    27  49baa0fd3d0100000000 REX.W movq r10,0x13dfda0  (Abort)
0x2270fb143031    31  41ffd2         call r10
0x2270fb143034    34  cc             int3l
0x2270fb143035    35  4883ec20       REX.W subq rsp,0x20
0x2270fb143039    39  488975b8       REX.W movq [rbp-0x48],rsi
0x2270fb14303d    3d  488b55c0       REX.W movq rdx,[rbp-0x40]
0x2270fb143041    41  f6c201         testb rdx,0x1
0x2270fb143044    44  0f853d010000   jnz 0x2270fb143187  <+0x187>
0x2270fb14304a    4a  488b4dd0       REX.W movq rcx,[rbp-0x30]
0x2270fb14304e    4e  f6c101         testb rcx,0x1
0x2270fb143051    51  0f853c010000   jnz 0x2270fb143193  <+0x193>
0x2270fb143057    57  483bd1         REX.W cmpq rdx,rcx
0x2270fb14305a    5a  0f8f93000000   jg 0x2270fb1430f3  <+0xf3>
0x2270fb143060    60  488b7dd8       REX.W movq rdi,[rbp-0x28]
0x2270fb143064    64  49b8f13784bce9260000 REX.W movq r8,0x26e9bc8437f1    ;; object: 0x26e9bc8437f1 <JSFunction add (sfi = 0x3544514e12f9)>
0x2270fb14306e    6e  4c3bc7         REX.W cmpq r8,rdi
0x2270fb143071    71  0f8528010000   jnz 0x2270fb14319f  <+0x19f>
0x2270fb143077    77  4c8b45c8       REX.W movq r8,[rbp-0x38]
0x2270fb14307b    7b  41f6c001       testb r8,0x1
0x2270fb14307f    7f  0f8526010000   jnz 0x2270fb1431ab  <+0x1ab>
0x2270fb143085    85  4c8bca         REX.W movq r9,rdx
0x2270fb143088    88  49c1e920       REX.W shrq r9, 32
0x2270fb14308c    8c  4d8bd8         REX.W movq r11,r8
0x2270fb14308f    8f  49c1eb20       REX.W shrq r11, 32
0x2270fb143093    93  4503d9         addl r11,r9
0x2270fb143096    96  0f801b010000   jo 0x2270fb1431b7  <+0x1b7>
0x2270fb14309c    9c  4183c101       addl r9,0x1
0x2270fb1430a0    a0  0f801d010000   jo 0x2270fb1431c3  <+0x1c3>
0x2270fb1430a6    a6  493b65e0       REX.W cmpq rsp,[r13-0x20] (external value (StackGuard::address_of_jslimit()))
0x2270fb1430aa    aa  0f864e000000   jna 0x2270fb1430fe  <+0xfe>
0x2270fb1430b0    b0  488bd1         REX.W movq rdx,rcx
0x2270fb1430b3    b3  48c1fa20       REX.W sarq rdx, 32
0x2270fb1430b7    b7  e90a000000     jmp 0x2270fb1430c6  <+0xc6>
0x2270fb1430bc    bc  0f1f4000       nop
0x2270fb1430c0    c0  4d8bcb         REX.W movq r9,r11
0x2270fb1430c3    c3  4d8bd8         REX.W movq r11,r8
0x2270fb1430c6    c6  443bca         cmpl r9,rdx
0x2270fb1430c9    c9  0f8f24000000   jg 0x2270fb1430f3  <+0xf3>
0x2270fb1430cf    cf  4d8bc3         REX.W movq r8,r11
0x2270fb1430d2    d2  4503c1         addl r8,r9
0x2270fb1430d5    d5  0f80f4000000   jo 0x2270fb1431cf  <+0x1cf>
0x2270fb1430db    db  4d8bd9         REX.W movq r11,r9
0x2270fb1430de    de  4183c301       addl r11,0x1
0x2270fb1430e2    e2  0f80f3000000   jo 0x2270fb1431db  <+0x1db>
0x2270fb1430e8    e8  493b65e0       REX.W cmpq rsp,[r13-0x20] (external value (StackGuard::address_of_jslimit()))
0x2270fb1430ec    ec  77d2           ja 0x2270fb1430c0  <+0xc0>
0x2270fb1430ee    ee  e951000000     jmp 0x2270fb143144  <+0x144>
0x2270fb1430f3    f3  498b4520       REX.W movq rax,[r13+0x20] (root (undefined_value))
0x2270fb1430f7    f7  488be5         REX.W movq rsp,rbp
0x2270fb1430fa    fa  5d             pop rbp
0x2270fb1430fb    fb  c23000         ret 0x30
0x2270fb1430fe    fe  4c895da8       REX.W movq [rbp-0x58],r11
0x2270fb143102   102  4c894da0       REX.W movq [rbp-0x60],r9
0x2270fb143106   106  33c0           xorl rax,rax
0x2270fb143108   108  48be210164618a1f0000 REX.W movq rsi,0x1f8a61640121    ;; object: 0x1f8a61640121 <NativeContext[239]>
0x2270fb143112   112  48bba0bf070100000000 REX.W movq rbx,0x107bfa0
0x2270fb14311c   11c  488bd0         REX.W movq rdx,rax
0x2270fb14311f   11f  4c8bc6         REX.W movq r8,rsi
0x2270fb143122   122  49ba4032420100000000 REX.W movq r10,0x1423240  (CEntry_Return1_DontSaveFPRegs_ArgvOnStack_NoBuiltinExit)
0x2270fb14312c   12c  41ffd2         call r10
0x2270fb14312f   12f  488b7dd8       REX.W movq rdi,[rbp-0x28]
0x2270fb143133   133  488b4dd0       REX.W movq rcx,[rbp-0x30]
0x2270fb143137   137  4c8b5da8       REX.W movq r11,[rbp-0x58]
0x2270fb14313b   13b  4c8b4da0       REX.W movq r9,[rbp-0x60]
0x2270fb14313f   13f  e96cffffff     jmp 0x2270fb1430b0  <+0xb0>
0x2270fb143144   144  4c8945a8       REX.W movq [rbp-0x58],r8
0x2270fb143148   148  4c895da0       REX.W movq [rbp-0x60],r11
0x2270fb14314c   14c  488955b0       REX.W movq [rbp-0x50],rdx
0x2270fb143150   150  488b1dbdffffff REX.W movq rbx,[rip+0xffffffbd]
0x2270fb143157   157  33c0           xorl rax,rax
0x2270fb143159   159  48be210164618a1f0000 REX.W movq rsi,0x1f8a61640121    ;; object: 0x1f8a61640121 <NativeContext[239]>
0x2270fb143163   163  4c8b15baffffff REX.W movq r10,[rip+0xffffffba]
0x2270fb14316a   16a  41ffd2         call r10
0x2270fb14316d   16d  488b7dd8       REX.W movq rdi,[rbp-0x28]
0x2270fb143171   171  488b4dd0       REX.W movq rcx,[rbp-0x30]
0x2270fb143175   175  4c8b45a8       REX.W movq r8,[rbp-0x58]
0x2270fb143179   179  4c8b5da0       REX.W movq r11,[rbp-0x60]
0x2270fb14317d   17d  488b55b0       REX.W movq rdx,[rbp-0x50]
0x2270fb143181   181  e93affffff     jmp 0x2270fb1430c0  <+0xc0>
0x2270fb143186   186  90             nop
0x2270fb143187   187  49c7c500000000 REX.W movq r13,0x0      ;; debug: deopt position, script offset '116'
                                                             ;; debug: deopt position, inlining id '-1'
                                                             ;; debug: deopt reason 'not a Smi'
                                                             ;; debug: deopt index 0
0x2270fb14318e   18e  e8cdee0300     call 0x2270fb182060     ;; eager deoptimization bailout
0x2270fb143193   193  49c7c501000000 REX.W movq r13,0x1      ;; debug: deopt position, script offset '116'
                                                             ;; debug: deopt position, inlining id '-1'
                                                             ;; debug: deopt reason 'not a Smi'
                                                             ;; debug: deopt index 1
0x2270fb14319a   19a  e8c1ee0300     call 0x2270fb182060     ;; eager deoptimization bailout
0x2270fb14319f   19f  49c7c502000000 REX.W movq r13,0x2      ;; debug: deopt position, script offset '152'
                                                             ;; debug: deopt position, inlining id '-1'
                                                             ;; debug: deopt reason 'wrong call target'
                                                             ;; debug: deopt index 2
0x2270fb1431a6   1a6  e8b5ee0300     call 0x2270fb182060     ;; eager deoptimization bailout
0x2270fb1431ab   1ab  49c7c503000000 REX.W movq r13,0x3      ;; debug: deopt position, script offset '42'
                                                             ;; debug: deopt position, inlining id '0'
                                                             ;; debug: deopt reason 'not a Smi'
                                                             ;; debug: deopt index 3
0x2270fb1431b2   1b2  e8a9ee0300     call 0x2270fb182060     ;; eager deoptimization bailout
0x2270fb1431b7   1b7  49c7c504000000 REX.W movq r13,0x4      ;; debug: deopt position, script offset '42'
                                                             ;; debug: deopt position, inlining id '0'
                                                             ;; debug: deopt reason 'overflow'
                                                             ;; debug: deopt index 4
0x2270fb1431be   1be  e89dee0300     call 0x2270fb182060     ;; eager deoptimization bailout
0x2270fb1431c3   1c3  49c7c505000000 REX.W movq r13,0x5      ;; debug: deopt position, script offset '134'
                                                             ;; debug: deopt position, inlining id '-1'
                                                             ;; debug: deopt reason 'overflow'
                                                             ;; debug: deopt index 5
0x2270fb1431ca   1ca  e891ee0300     call 0x2270fb182060     ;; eager deoptimization bailout
0x2270fb1431cf   1cf  49c7c506000000 REX.W movq r13,0x6      ;; debug: deopt position, script offset '42'
                                                             ;; debug: deopt position, inlining id '0'
                                                             ;; debug: deopt reason 'overflow'
                                                             ;; debug: deopt index 6
0x2270fb1431d6   1d6  e885ee0300     call 0x2270fb182060     ;; eager deoptimization bailout
0x2270fb1431db   1db  49c7c507000000 REX.W movq r13,0x7      ;; debug: deopt position, script offset '134'
                                                             ;; debug: deopt position, inlining id '-1'
                                                             ;; debug: deopt reason 'overflow'
                                                             ;; debug: deopt index 7
0x2270fb1431e2   1e2  e879ee0300     call 0x2270fb182060     ;; eager deoptimization bailout
0x2270fb1431e7   1e7  49c7c508000000 REX.W movq r13,0x8      ;; debug: deopt position, script offset '98'
                                                             ;; debug: deopt position, inlining id '-1'
                                                             ;; debug: deopt reason '(unknown)'
                                                             ;; debug: deopt index 8
0x2270fb1431ee   1ee  e86dee0700     call 0x2270fb1c2060     ;; lazy deoptimization bailout
0x2270fb1431f3   1f3  49c7c509000000 REX.W movq r13,0x9      ;; debug: deopt position, script offset '98'
                                                             ;; debug: deopt position, inlining id '-1'
                                                             ;; debug: deopt reason '(unknown)'
                                                             ;; debug: deopt index 9
0x2270fb1431fa   1fa  e861ee0700     call 0x2270fb1c2060     ;; lazy deoptimization bailout
0x2270fb1431ff   1ff  90             nop

Source positions:
 pc offset  position
         0         0
        39       116
        60       152
        77        42
        9c       134
        a6        98
        b0       116
        cf        42
        db       134
        e8        98
        f3       168
        fe        98

Inlined functions (count = 1)
 0x3544514e12f9 <SharedFunctionInfo add>

Deoptimization Input Data (deopt points = 10)
 index  bytecode-offset    pc
     0               23    NA 
     1               23    NA 
     2               23    NA 
     3                2    NA 
     4                2    NA 
     5               37    NA 
     6                2    NA 
     7               37    NA 
     8               41   12f 
     9               41   16d 

Safepoints (size = 36)
0x2270fb14312f     12f   1e7  00010011000000 (sp -> fp)       8
0x2270fb14316d     16d   1f3  00010011000000 (sp -> fp)       9

RelocInfo (size = 239)
0x2270fb143066  full embedded object  (0x26e9bc8437f1 <JSFunction add (sfi = 0x3544514e12f9)>)
0x2270fb14310a  full embedded object  (0x1f8a61640121 <NativeContext[239]>)
0x2270fb14315b  full embedded object  (0x1f8a61640121 <NativeContext[239]>)
0x2270fb143187  deopt script offset  (116)
0x2270fb143187  deopt inlining id  (-1)
0x2270fb143187  deopt reason  (not a Smi)
0x2270fb143187  deopt index
0x2270fb14318f  runtime entry  (eager deoptimization bailout)
0x2270fb143193  deopt script offset  (116)
0x2270fb143193  deopt inlining id  (-1)
0x2270fb143193  deopt reason  (not a Smi)
0x2270fb143193  deopt index
0x2270fb14319b  runtime entry  (eager deoptimization bailout)
0x2270fb14319f  deopt script offset  (152)
0x2270fb14319f  deopt inlining id  (-1)
0x2270fb14319f  deopt reason  (wrong call target)
0x2270fb14319f  deopt index
0x2270fb1431a7  runtime entry  (eager deoptimization bailout)
0x2270fb1431ab  deopt script offset  (42)
0x2270fb1431ab  deopt inlining id  (0)
0x2270fb1431ab  deopt reason  (not a Smi)
0x2270fb1431ab  deopt index
0x2270fb1431b3  runtime entry  (eager deoptimization bailout)
0x2270fb1431b7  deopt script offset  (42)
0x2270fb1431b7  deopt inlining id  (0)
0x2270fb1431b7  deopt reason  (overflow)
0x2270fb1431b7  deopt index
0x2270fb1431bf  runtime entry  (eager deoptimization bailout)
0x2270fb1431c3  deopt script offset  (134)
0x2270fb1431c3  deopt inlining id  (-1)
0x2270fb1431c3  deopt reason  (overflow)
0x2270fb1431c3  deopt index
0x2270fb1431cb  runtime entry  (eager deoptimization bailout)
0x2270fb1431cf  deopt script offset  (42)
0x2270fb1431cf  deopt inlining id  (0)
0x2270fb1431cf  deopt reason  (overflow)
0x2270fb1431cf  deopt index
0x2270fb1431d7  runtime entry  (eager deoptimization bailout)
0x2270fb1431db  deopt script offset  (134)
0x2270fb1431db  deopt inlining id  (-1)
0x2270fb1431db  deopt reason  (overflow)
0x2270fb1431db  deopt index
0x2270fb1431e3  runtime entry  (eager deoptimization bailout)
0x2270fb1431e7  deopt script offset  (98)
0x2270fb1431e7  deopt inlining id  (-1)
0x2270fb1431e7  deopt reason  ((unknown))
0x2270fb1431e7  deopt index
0x2270fb1431ef  runtime entry  (lazy deoptimization bailout)
0x2270fb1431f3  deopt script offset  (98)
0x2270fb1431f3  deopt inlining id  (-1)
0x2270fb1431f3  deopt reason  ((unknown))
0x2270fb1431f3  deopt index
0x2270fb1431fb  runtime entry  (lazy deoptimization bailout)

--- End code ---
--- Raw source ---
const add = function(a, b) {
    return a + b;
}

const iterationNum = 100000000;

let total = 0;
for (let i = 1; i <= iterationNum; i++) {
    total = add(total, i);
} 

--- Optimized code ---
optimization_id = 2
source_position = 0
kind = OPTIMIZED_FUNCTION
stack_slots = 14
compiler = turbofan
address = 0x2270fb143241

Instructions (size = 532)
0x2270fb1432a0     0  488b59c0       REX.W movq rbx,[rcx-0x40]
0x2270fb1432a4     4  f6430f01       testb [rbx+0xf],0x1
0x2270fb1432a8     8  740d           jz 0x2270fb1432b7  <+0x17>
0x2270fb1432aa     a  49ba00cc3b0100000000 REX.W movq r10,0x13bcc00  (CompileLazyDeoptimizedCode)
0x2270fb1432b4    14  41ffe2         jmp r10
0x2270fb1432b7    17  55             push rbp
0x2270fb1432b8    18  4889e5         REX.W movq rbp,rsp
0x2270fb1432bb    1b  56             push rsi
0x2270fb1432bc    1c  57             push rdi
0x2270fb1432bd    1d  48ba0000000021000000 REX.W movq rdx,0x2100000000
0x2270fb1432c7    27  49baa0fd3d0100000000 REX.W movq r10,0x13dfda0  (Abort)
0x2270fb1432d1    31  41ffd2         call r10
0x2270fb1432d4    34  cc             int3l
0x2270fb1432d5    35  4883ec20       REX.W subq rsp,0x20
0x2270fb1432d9    39  488975b8       REX.W movq [rbp-0x48],rsi
0x2270fb1432dd    3d  488b55c0       REX.W movq rdx,[rbp-0x40]
0x2270fb1432e1    41  f6c201         testb rdx,0x1
0x2270fb1432e4    44  0f8568010000   jnz 0x2270fb143452  <+0x1b2>
0x2270fb1432ea    4a  488b4dd0       REX.W movq rcx,[rbp-0x30]
0x2270fb1432ee    4e  f6c101         testb rcx,0x1
0x2270fb1432f1    51  0f8567010000   jnz 0x2270fb14345e  <+0x1be>
0x2270fb1432f7    57  483bd1         REX.W cmpq rdx,rcx
0x2270fb1432fa    5a  0f8fbd000000   jg 0x2270fb1433bd  <+0x11d>
0x2270fb143300    60  488b7dd8       REX.W movq rdi,[rbp-0x28]
0x2270fb143304    64  49b8f13784bce9260000 REX.W movq r8,0x26e9bc8437f1    ;; object: 0x26e9bc8437f1 <JSFunction add (sfi = 0x3544514e12f9)>
0x2270fb14330e    6e  4c3bc7         REX.W cmpq r8,rdi
0x2270fb143311    71  0f8553010000   jnz 0x2270fb14346a  <+0x1ca>
0x2270fb143317    77  4c8b45c8       REX.W movq r8,[rbp-0x38]
0x2270fb14331b    7b  41f6c001       testb r8,0x1
0x2270fb14331f    7f  0f8428000000   jz 0x2270fb14334d  <+0xad>
0x2270fb143325    85  4d8b48ff       REX.W movq r9,[r8-0x1]
0x2270fb143329    89  4d398dc0000000 REX.W cmpq [r13+0xc0] (root (heap_number_map)),r9
0x2270fb143330    90  0f840c000000   jz 0x2270fb143342  <+0xa2>
0x2270fb143336    96  664183790b43   cmpw [r9+0xb],0x43
0x2270fb14333c    9c  0f8534010000   jnz 0x2270fb143476  <+0x1d6>
0x2270fb143342    a2  c4c17b104007   vmovsd xmm0,[r8+0x7]
0x2270fb143348    a8  e909000000     jmp 0x2270fb143356  <+0xb6>
0x2270fb14334d    ad  49c1e820       REX.W shrq r8, 32
0x2270fb143351    b1  c4c1032ac0     vcvtlsi2sd xmm0,xmm15,r8
0x2270fb143356    b6  4c8bc2         REX.W movq r8,rdx
0x2270fb143359    b9  49c1e820       REX.W shrq r8, 32
0x2270fb14335d    bd  c4c1032ac8     vcvtlsi2sd xmm1,xmm15,r8
0x2270fb143362    c2  c5fb58c1       vaddsd xmm0,xmm0,xmm1
0x2270fb143366    c6  4183c001       addl r8,0x1
0x2270fb14336a    ca  0f8012010000   jo 0x2270fb143482  <+0x1e2>
0x2270fb143370    d0  493b65e0       REX.W cmpq rsp,[r13-0x20] (external value (StackGuard::address_of_jslimit()))
0x2270fb143374    d4  0f864e000000   jna 0x2270fb1433c8  <+0x128>
0x2270fb14337a    da  488bd1         REX.W movq rdx,rcx
0x2270fb14337d    dd  48c1fa20       REX.W sarq rdx, 32
0x2270fb143381    e1  e90d000000     jmp 0x2270fb143393  <+0xf3>
0x2270fb143386    e6  660f1f840000000000 nop
0x2270fb14338f    ef  90             nop
0x2270fb143390    f0  4d8bc1         REX.W movq r8,r9
0x2270fb143393    f3  443bc2         cmpl r8,rdx
0x2270fb143396    f6  0f8f21000000   jg 0x2270fb1433bd  <+0x11d>
0x2270fb14339c    fc  c4c1032ac8     vcvtlsi2sd xmm1,xmm15,r8
0x2270fb1433a1   101  c5fb58c1       vaddsd xmm0,xmm0,xmm1
0x2270fb1433a5   105  4d8bc8         REX.W movq r9,r8
0x2270fb1433a8   108  4183c101       addl r9,0x1
0x2270fb1433ac   10c  0f80dc000000   jo 0x2270fb14348e  <+0x1ee>
0x2270fb1433b2   112  493b65e0       REX.W cmpq rsp,[r13-0x20] (external value (StackGuard::address_of_jslimit()))
0x2270fb1433b6   116  77d8           ja 0x2270fb143390  <+0xf0>
0x2270fb1433b8   118  e950000000     jmp 0x2270fb14340d  <+0x16d>
0x2270fb1433bd   11d  498b4520       REX.W movq rax,[r13+0x20] (root (undefined_value))
0x2270fb1433c1   121  488be5         REX.W movq rsp,rbp
0x2270fb1433c4   124  5d             pop rbp
0x2270fb1433c5   125  c23000         ret 0x30
0x2270fb1433c8   128  c5fb1145a8     vmovsd [rbp-0x58],xmm0
0x2270fb1433cd   12d  4c8945a0       REX.W movq [rbp-0x60],r8
0x2270fb1433d1   131  33c0           xorl rax,rax
0x2270fb1433d3   133  48bba0bf070100000000 REX.W movq rbx,0x107bfa0
0x2270fb1433dd   13d  48be210164618a1f0000 REX.W movq rsi,0x1f8a61640121    ;; object: 0x1f8a61640121 <NativeContext[239]>
0x2270fb1433e7   147  488bd0         REX.W movq rdx,rax
0x2270fb1433ea   14a  49ba4032420100000000 REX.W movq r10,0x1423240  (CEntry_Return1_DontSaveFPRegs_ArgvOnStack_NoBuiltinExit)
0x2270fb1433f4   154  41ffd2         call r10
0x2270fb1433f7   157  488b7dd8       REX.W movq rdi,[rbp-0x28]
0x2270fb1433fb   15b  488b4dd0       REX.W movq rcx,[rbp-0x30]
0x2270fb1433ff   15f  c5fb1045a8     vmovsd xmm0,[rbp-0x58]
0x2270fb143404   164  4c8b45a0       REX.W movq r8,[rbp-0x60]
0x2270fb143408   168  e96dffffff     jmp 0x2270fb14337a  <+0xda>
0x2270fb14340d   16d  c5fb1145a8     vmovsd [rbp-0x58],xmm0
0x2270fb143412   172  4c894da0       REX.W movq [rbp-0x60],r9
0x2270fb143416   176  488955b0       REX.W movq [rbp-0x50],rdx
0x2270fb14341a   17a  488b1db4ffffff REX.W movq rbx,[rip+0xffffffb4]
0x2270fb143421   181  48be210164618a1f0000 REX.W movq rsi,0x1f8a61640121    ;; object: 0x1f8a61640121 <NativeContext[239]>
0x2270fb14342b   18b  33c0           xorl rax,rax
0x2270fb14342d   18d  4c8b15b8ffffff REX.W movq r10,[rip+0xffffffb8]
0x2270fb143434   194  41ffd2         call r10
0x2270fb143437   197  488b7dd8       REX.W movq rdi,[rbp-0x28]
0x2270fb14343b   19b  488b4dd0       REX.W movq rcx,[rbp-0x30]
0x2270fb14343f   19f  c5fb1045a8     vmovsd xmm0,[rbp-0x58]
0x2270fb143444   1a4  4c8b4da0       REX.W movq r9,[rbp-0x60]
0x2270fb143448   1a8  488b55b0       REX.W movq rdx,[rbp-0x50]
0x2270fb14344c   1ac  e93fffffff     jmp 0x2270fb143390  <+0xf0>
0x2270fb143451   1b1  90             nop
0x2270fb143452   1b2  49c7c500000000 REX.W movq r13,0x0      ;; debug: deopt position, script offset '116'
                                                             ;; debug: deopt position, inlining id '-1'
                                                             ;; debug: deopt reason 'not a Smi'
                                                             ;; debug: deopt index 0
0x2270fb143459   1b9  e802ec0300     call 0x2270fb182060     ;; eager deoptimization bailout
0x2270fb14345e   1be  49c7c501000000 REX.W movq r13,0x1      ;; debug: deopt position, script offset '116'
                                                             ;; debug: deopt position, inlining id '-1'
                                                             ;; debug: deopt reason 'not a Smi'
                                                             ;; debug: deopt index 1
0x2270fb143465   1c5  e8f6eb0300     call 0x2270fb182060     ;; eager deoptimization bailout
0x2270fb14346a   1ca  49c7c502000000 REX.W movq r13,0x2      ;; debug: deopt position, script offset '152'
                                                             ;; debug: deopt position, inlining id '-1'
                                                             ;; debug: deopt reason 'wrong call target'
                                                             ;; debug: deopt index 2
0x2270fb143471   1d1  e8eaeb0300     call 0x2270fb182060     ;; eager deoptimization bailout
0x2270fb143476   1d6  49c7c503000000 REX.W movq r13,0x3      ;; debug: deopt position, script offset '42'
                                                             ;; debug: deopt position, inlining id '0'
                                                             ;; debug: deopt reason 'not a Number or Oddball'
                                                             ;; debug: deopt index 3
0x2270fb14347d   1dd  e8deeb0300     call 0x2270fb182060     ;; eager deoptimization bailout
0x2270fb143482   1e2  49c7c504000000 REX.W movq r13,0x4      ;; debug: deopt position, script offset '134'
                                                             ;; debug: deopt position, inlining id '-1'
                                                             ;; debug: deopt reason 'overflow'
                                                             ;; debug: deopt index 4
0x2270fb143489   1e9  e8d2eb0300     call 0x2270fb182060     ;; eager deoptimization bailout
0x2270fb14348e   1ee  49c7c505000000 REX.W movq r13,0x5      ;; debug: deopt position, script offset '134'
                                                             ;; debug: deopt position, inlining id '-1'
                                                             ;; debug: deopt reason 'overflow'
                                                             ;; debug: deopt index 5
0x2270fb143495   1f5  e8c6eb0300     call 0x2270fb182060     ;; eager deoptimization bailout
0x2270fb14349a   1fa  49c7c506000000 REX.W movq r13,0x6      ;; debug: deopt position, script offset '98'
                                                             ;; debug: deopt position, inlining id '-1'
                                                             ;; debug: deopt reason '(unknown)'
                                                             ;; debug: deopt index 6
0x2270fb1434a1   201  e8baeb0700     call 0x2270fb1c2060     ;; lazy deoptimization bailout
0x2270fb1434a6   206  49c7c507000000 REX.W movq r13,0x7      ;; debug: deopt position, script offset '98'
                                                             ;; debug: deopt position, inlining id '-1'
                                                             ;; debug: deopt reason '(unknown)'
                                                             ;; debug: deopt index 7
0x2270fb1434ad   20d  e8aeeb0700     call 0x2270fb1c2060     ;; lazy deoptimization bailout
0x2270fb1434b2   212  6690           nop

Source positions:
 pc offset  position
         0         0
        39       116
        60       152
        77        42
        b6       134
        bd        42
        c6       134
        d0        98
        da       116
        fc        42
       105       134
       112        98
       11d       168
       128        98

Inlined functions (count = 1)
 0x3544514e12f9 <SharedFunctionInfo add>

Deoptimization Input Data (deopt points = 8)
 index  bytecode-offset    pc
     0               23    NA 
     1               23    NA 
     2               23    NA 
     3                2    NA 
     4               37    NA 
     5               37    NA 
     6               41   157 
     7               41   197 

Safepoints (size = 36)
0x2270fb1433f7     157   1fa  00010011000000 (sp -> fp)       6
0x2270fb143437     197   206  00010011000000 (sp -> fp)       7

RelocInfo (size = 193)
0x2270fb143306  full embedded object  (0x26e9bc8437f1 <JSFunction add (sfi = 0x3544514e12f9)>)
0x2270fb1433df  full embedded object  (0x1f8a61640121 <NativeContext[239]>)
0x2270fb143423  full embedded object  (0x1f8a61640121 <NativeContext[239]>)
0x2270fb143452  deopt script offset  (116)
0x2270fb143452  deopt inlining id  (-1)
0x2270fb143452  deopt reason  (not a Smi)
0x2270fb143452  deopt index
0x2270fb14345a  runtime entry  (eager deoptimization bailout)
0x2270fb14345e  deopt script offset  (116)
0x2270fb14345e  deopt inlining id  (-1)
0x2270fb14345e  deopt reason  (not a Smi)
0x2270fb14345e  deopt index
0x2270fb143466  runtime entry  (eager deoptimization bailout)
0x2270fb14346a  deopt script offset  (152)
0x2270fb14346a  deopt inlining id  (-1)
0x2270fb14346a  deopt reason  (wrong call target)
0x2270fb14346a  deopt index
0x2270fb143472  runtime entry  (eager deoptimization bailout)
0x2270fb143476  deopt script offset  (42)
0x2270fb143476  deopt inlining id  (0)
0x2270fb143476  deopt reason  (not a Number or Oddball)
0x2270fb143476  deopt index
0x2270fb14347e  runtime entry  (eager deoptimization bailout)
0x2270fb143482  deopt script offset  (134)
0x2270fb143482  deopt inlining id  (-1)
0x2270fb143482  deopt reason  (overflow)
0x2270fb143482  deopt index
0x2270fb14348a  runtime entry  (eager deoptimization bailout)
0x2270fb14348e  deopt script offset  (134)
0x2270fb14348e  deopt inlining id  (-1)
0x2270fb14348e  deopt reason  (overflow)
0x2270fb14348e  deopt index
0x2270fb143496  runtime entry  (eager deoptimization bailout)
0x2270fb14349a  deopt script offset  (98)
0x2270fb14349a  deopt inlining id  (-1)
0x2270fb14349a  deopt reason  ((unknown))
0x2270fb14349a  deopt index
0x2270fb1434a2  runtime entry  (lazy deoptimization bailout)
0x2270fb1434a6  deopt script offset  (98)
0x2270fb1434a6  deopt inlining id  (-1)
0x2270fb1434a6  deopt reason  ((unknown))
0x2270fb1434a6  deopt index
0x2270fb1434ae  runtime entry  (lazy deoptimization bailout)

--- End code ---
--- Raw source ---
(a, b) {
    return a + b;
}


--- Optimized code ---
optimization_id = 1
source_position = 20
kind = OPTIMIZED_FUNCTION
name = add
stack_slots = 5
compiler = turbofan
address = 0x2270fb1434e1

Instructions (size = 432)
0x2270fb143540     0  488b59c0       REX.W movq rbx,[rcx-0x40]
0x2270fb143544     4  f6430f01       testb [rbx+0xf],0x1
0x2270fb143548     8  740d           jz 0x2270fb143557  <+0x17>
0x2270fb14354a     a  49ba00cc3b0100000000 REX.W movq r10,0x13bcc00  (CompileLazyDeoptimizedCode)
0x2270fb143554    14  41ffe2         jmp r10
0x2270fb143557    17  55             push rbp
0x2270fb143558    18  4889e5         REX.W movq rbp,rsp
0x2270fb14355b    1b  56             push rsi
0x2270fb14355c    1c  57             push rdi
0x2270fb14355d    1d  4883ec08       REX.W subq rsp,0x8
0x2270fb143561    21  488975e8       REX.W movq [rbp-0x18],rsi
0x2270fb143565    25  493b65e0       REX.W cmpq rsp,[r13-0x20] (external value (StackGuard::address_of_jslimit()))
0x2270fb143569    29  0f86ea000000   jna 0x2270fb143659  <+0x119>
0x2270fb14356f    2f  488b4d18       REX.W movq rcx,[rbp+0x18]
0x2270fb143573    33  f6c101         testb rcx,0x1
0x2270fb143576    36  0f8426000000   jz 0x2270fb1435a2  <+0x62>
0x2270fb14357c    3c  488b79ff       REX.W movq rdi,[rcx-0x1]
0x2270fb143580    40  4939bdc0000000 REX.W cmpq [r13+0xc0] (root (heap_number_map)),rdi
0x2270fb143587    47  0f840b000000   jz 0x2270fb143598  <+0x58>
0x2270fb14358d    4d  66837f0b43     cmpw [rdi+0xb],0x43
0x2270fb143592    52  0f8532010000   jnz 0x2270fb1436ca  <+0x18a>
0x2270fb143598    58  c5fb104107     vmovsd xmm0,[rcx+0x7]
0x2270fb14359d    5d  e90b000000     jmp 0x2270fb1435ad  <+0x6d>
0x2270fb1435a2    62  488bf9         REX.W movq rdi,rcx
0x2270fb1435a5    65  48c1ef20       REX.W shrq rdi, 32
0x2270fb1435a9    69  c5832ac7       vcvtlsi2sd xmm0,xmm15,rdi
0x2270fb1435ad    6d  488b7d10       REX.W movq rdi,[rbp+0x10]
0x2270fb1435b1    71  40f6c701       testb rdi,0x1
0x2270fb1435b5    75  0f8427000000   jz 0x2270fb1435e2  <+0xa2>
0x2270fb1435bb    7b  4c8b47ff       REX.W movq r8,[rdi-0x1]
0x2270fb1435bf    7f  4d3985c0000000 REX.W cmpq [r13+0xc0] (root (heap_number_map)),r8
0x2270fb1435c6    86  0f840c000000   jz 0x2270fb1435d8  <+0x98>
0x2270fb1435cc    8c  664183780b43   cmpw [r8+0xb],0x43
0x2270fb1435d2    92  0f85fe000000   jnz 0x2270fb1436d6  <+0x196>
0x2270fb1435d8    98  c5fb104f07     vmovsd xmm1,[rdi+0x7]
0x2270fb1435dd    9d  e908000000     jmp 0x2270fb1435ea  <+0xaa>
0x2270fb1435e2    a2  48c1ef20       REX.W shrq rdi, 32
0x2270fb1435e6    a6  c5832acf       vcvtlsi2sd xmm1,xmm15,rdi
0x2270fb1435ea    aa  c5fb58c1       vaddsd xmm0,xmm0,xmm1
0x2270fb1435ee    ae  c5fb2cc8       vcvttsd2si rcx,xmm0
0x2270fb1435f2    b2  c5832ac9       vcvtlsi2sd xmm1,xmm15,rcx
0x2270fb1435f6    b6  c5f92ec8       vucomisd xmm1,xmm0
0x2270fb1435fa    ba  0f8a1d000000   jpe 0x2270fb14361d  <+0xdd>
0x2270fb143600    c0  0f8517000000   jnz 0x2270fb14361d  <+0xdd>
0x2270fb143606    c6  83f900         cmpl rcx,0x0
0x2270fb143609    c9  0f8480000000   jz 0x2270fb14368f  <+0x14f>
0x2270fb14360f    cf  48c1e120       REX.W shlq rcx, 32
0x2270fb143613    d3  488bc1         REX.W movq rax,rcx
0x2270fb143616    d6  488be5         REX.W movq rsp,rbp
0x2270fb143619    d9  5d             pop rbp
0x2270fb14361a    da  c21800         ret 0x18
0x2270fb14361d    dd  498b8d58a6ffff REX.W movq rcx,[r13-0x59a8]
0x2270fb143624    e4  488d7910       REX.W leaq rdi,[rcx+0x10]
0x2270fb143628    e8  4939bd60a6ffff REX.W cmpq [r13-0x59a0],rdi
0x2270fb14362f    ef  0f866f000000   jna 0x2270fb1436a4  <+0x164>
0x2270fb143635    f5  488d7910       REX.W leaq rdi,[rcx+0x10]
0x2270fb143639    f9  4989bd58a6ffff REX.W movq [r13-0x59a8],rdi
0x2270fb143640   100  4883c101       REX.W addq rcx,0x1
0x2270fb143644   104  498bbdc0000000 REX.W movq rdi,[r13+0xc0] (root (heap_number_map))
0x2270fb14364b   10b  488979ff       REX.W movq [rcx-0x1],rdi
0x2270fb14364f   10f  c5fb114107     vmovsd [rcx+0x7],xmm0
0x2270fb143654   114  488bc1         REX.W movq rax,rcx
0x2270fb143657   117  ebbd           jmp 0x2270fb143616  <+0xd6>
0x2270fb143659   119  48b90000000028000000 REX.W movq rcx,0x2800000000
0x2270fb143663   123  51             push rcx
0x2270fb143664   124  48bb30c1070100000000 REX.W movq rbx,0x107c130
0x2270fb14366e   12e  b801000000     movl rax,0x1
0x2270fb143673   133  48be210164618a1f0000 REX.W movq rsi,0x1f8a61640121    ;; object: 0x1f8a61640121 <NativeContext[239]>
0x2270fb14367d   13d  49ba4032420100000000 REX.W movq r10,0x1423240  (CEntry_Return1_DontSaveFPRegs_ArgvOnStack_NoBuiltinExit)
0x2270fb143687   147  41ffd2         call r10
0x2270fb14368a   14a  e9e0feffff     jmp 0x2270fb14356f  <+0x2f>
0x2270fb14368f   14f  c4e37916c701   vpextrd rdi,xmm0,0x1,
0x2270fb143695   155  83ff00         cmpl rdi,0x0
0x2270fb143698   158  7c83           jl 0x2270fb14361d  <+0xdd>
0x2270fb14369a   15a  e970ffffff     jmp 0x2270fb14360f  <+0xcf>
0x2270fb14369f   15f  e979ffffff     jmp 0x2270fb14361d  <+0xdd>
0x2270fb1436a4   164  c5fb1145e8     vmovsd [rbp-0x18],xmm0
0x2270fb1436a9   169  ba10000000     movl rdx,0x10
0x2270fb1436ae   16e  49bac0d13b0100000000 REX.W movq r10,0x13bd1c0  (AllocateRegularInYoungGeneration)
0x2270fb1436b8   178  41ffd2         call r10
0x2270fb1436bb   17b  488d48ff       REX.W leaq rcx,[rax-0x1]
0x2270fb1436bf   17f  c5fb1045e8     vmovsd xmm0,[rbp-0x18]
0x2270fb1436c4   184  e96cffffff     jmp 0x2270fb143635  <+0xf5>
0x2270fb1436c9   189  90             nop
0x2270fb1436ca   18a  49c7c500000000 REX.W movq r13,0x0      ;; debug: deopt position, script offset '42'
                                                             ;; debug: deopt position, inlining id '-1'
                                                             ;; debug: deopt reason 'not a Number or Oddball'
                                                             ;; debug: deopt index 0
0x2270fb1436d1   191  e88ae90300     call 0x2270fb182060     ;; eager deoptimization bailout
0x2270fb1436d6   196  49c7c501000000 REX.W movq r13,0x1      ;; debug: deopt position, script offset '42'
                                                             ;; debug: deopt position, inlining id '-1'
                                                             ;; debug: deopt reason 'not a Number or Oddball'
                                                             ;; debug: deopt index 1
0x2270fb1436dd   19d  e87ee90300     call 0x2270fb182060     ;; eager deoptimization bailout
0x2270fb1436e2   1a2  49c7c502000000 REX.W movq r13,0x2      ;; debug: deopt position, script offset '20'
                                                             ;; debug: deopt position, inlining id '-1'
                                                             ;; debug: deopt reason '(unknown)'
                                                             ;; debug: deopt index 2
0x2270fb1436e9   1a9  e872e90700     call 0x2270fb1c2060     ;; lazy deoptimization bailout
0x2270fb1436ee   1ae  6690           nop

Source positions:
 pc offset  position
         0        20
        2f        42
        ae        46
       119        20
       14f        46

Inlined functions (count = 0)

Deoptimization Input Data (deopt points = 3)
 index  bytecode-offset    pc
     0                2    NA 
     1                2    NA 
     2               -1   14a 

Safepoints (size = 34)
0x2270fb14368a     14a   1a2  10000 (sp -> fp)       2
0x2270fb1436bb     17b    NA  00000 (sp -> fp)  <none>

RelocInfo (size = 74)
0x2270fb143675  full embedded object  (0x1f8a61640121 <NativeContext[239]>)
0x2270fb1436ca  deopt script offset  (42)
0x2270fb1436ca  deopt inlining id  (-1)
0x2270fb1436ca  deopt reason  (not a Number or Oddball)
0x2270fb1436ca  deopt index
0x2270fb1436d2  runtime entry  (eager deoptimization bailout)
0x2270fb1436d6  deopt script offset  (42)
0x2270fb1436d6  deopt inlining id  (-1)
0x2270fb1436d6  deopt reason  (not a Number or Oddball)
0x2270fb1436d6  deopt index
0x2270fb1436de  runtime entry  (eager deoptimization bailout)
0x2270fb1436e2  deopt script offset  (20)
0x2270fb1436e2  deopt inlining id  (-1)
0x2270fb1436e2  deopt reason  ((unknown))
0x2270fb1436e2  deopt index
0x2270fb1436ea  runtime entry  (lazy deoptimization bailout)

--- End code ---
