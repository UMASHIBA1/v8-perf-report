--- Code ---
kind = JS_TO_WASM_FUNCTION
name = js-to-wasm:ii:i
compiler = turbofan
address = 0x1ca2c6b42e41

Instructions (size = 236)
0x1ca2c6b42ea0     0  55             push rbp
0x1ca2c6b42ea1     1  4889e5         REX.W movq rbp,rsp
0x1ca2c6b42ea4     4  56             push rsi
0x1ca2c6b42ea5     5  57             push rdi
0x1ca2c6b42ea6     6  4883ec20       REX.W subq rsp,0x20
0x1ca2c6b42eaa     a  488b5f17       REX.W movq rbx,[rdi+0x17]
0x1ca2c6b42eae     e  488b5b07       REX.W movq rbx,[rbx+0x7]
0x1ca2c6b42eb2    12  488b4b0f       REX.W movq rcx,[rbx+0xf]
0x1ca2c6b42eb6    16  48894de8       REX.W movq [rbp-0x18],rcx
0x1ca2c6b42eba    1a  488b4518       REX.W movq rax,[rbp+0x18]
0x1ca2c6b42ebe    1e  a801           test al,0x1
0x1ca2c6b42ec0    20  0f855b000000   jnz 0x1ca2c6b42f21  <+0x81>
0x1ca2c6b42ec6    26  48c1e820       REX.W shrq rax, 32
0x1ca2c6b42eca    2a  488b7d10       REX.W movq rdi,[rbp+0x10]
0x1ca2c6b42ece    2e  40f6c701       testb rdi,0x1
0x1ca2c6b42ed2    32  0f857b000000   jnz 0x1ca2c6b42f53  <+0xb3>
0x1ca2c6b42ed8    38  48c1ef20       REX.W shrq rdi, 32
0x1ca2c6b42edc    3c  4c8b4177       REX.W movq r8,[rcx+0x77]
0x1ca2c6b42ee0    40  4d8b80c0320000 REX.W movq r8,[r8+0x32c0]
0x1ca2c6b42ee7    47  41c70001000000 movl [r8],0x1
0x1ca2c6b42eee    4e  4c8b417f       REX.W movq r8,[rcx+0x7f]
0x1ca2c6b42ef2    52  48635b1b       REX.W movsxlq rbx,[rbx+0x1b]
0x1ca2c6b42ef6    56  4903d8         REX.W addq rbx,r8
0x1ca2c6b42ef9    59  488bf1         REX.W movq rsi,rcx
0x1ca2c6b42efc    5c  488bd7         REX.W movq rdx,rdi
0x1ca2c6b42eff    5f  ffd3           call rbx
0x1ca2c6b42f01    61  488b5de8       REX.W movq rbx,[rbp-0x18]
0x1ca2c6b42f05    65  488b5b77       REX.W movq rbx,[rbx+0x77]
0x1ca2c6b42f09    69  488b9bc0320000 REX.W movq rbx,[rbx+0x32c0]
0x1ca2c6b42f10    70  c70300000000   movl [rbx],0x0
0x1ca2c6b42f16    76  48c1e020       REX.W shlq rax, 32
0x1ca2c6b42f1a    7a  488be5         REX.W movq rsp,rbp
0x1ca2c6b42f1d    7d  5d             pop rbp
0x1ca2c6b42f1e    7e  c21800         ret 0x18
0x1ca2c6b42f21    81  48895dd8       REX.W movq [rbp-0x28],rbx
0x1ca2c6b42f25    85  488975d0       REX.W movq [rbp-0x30],rsi
0x1ca2c6b42f29    89  48bf000000007f030000 REX.W movq rdi,0x37f00000000
0x1ca2c6b42f33    93  4c8bc6         REX.W movq r8,rsi
0x1ca2c6b42f36    96  48c1ff20       REX.W sarq rdi, 32
0x1ca2c6b42f3a    9a  41ff94fdc8320000 call [r13+rdi*8+0x32c8]
0x1ca2c6b42f42    a2  488b75d0       REX.W movq rsi,[rbp-0x30]
0x1ca2c6b42f46    a6  488b4de8       REX.W movq rcx,[rbp-0x18]
0x1ca2c6b42f4a    aa  488b5dd8       REX.W movq rbx,[rbp-0x28]
0x1ca2c6b42f4e    ae  e977ffffff     jmp 0x1ca2c6b42eca  <+0x2a>
0x1ca2c6b42f53    b3  488945e0       REX.W movq [rbp-0x20],rax
0x1ca2c6b42f57    b7  48895dd8       REX.W movq [rbp-0x28],rbx
0x1ca2c6b42f5b    bb  4c8b05c9ffffff REX.W movq r8,[rip+0xffffffc9]
0x1ca2c6b42f62    c2  4c8bd0         REX.W movq r10,rax
0x1ca2c6b42f65    c5  488bc7         REX.W movq rax,rdi
0x1ca2c6b42f68    c8  498bfa         REX.W movq rdi,r10
0x1ca2c6b42f6b    cb  49c1f820       REX.W sarq r8, 32
0x1ca2c6b42f6f    cf  43ff94c5c8320000 call [r13+r8*8+0x32c8]
0x1ca2c6b42f77    d7  488bf8         REX.W movq rdi,rax
0x1ca2c6b42f7a    da  488b4de8       REX.W movq rcx,[rbp-0x18]
0x1ca2c6b42f7e    de  488b45e0       REX.W movq rax,[rbp-0x20]
0x1ca2c6b42f82    e2  488b5dd8       REX.W movq rbx,[rbp-0x28]
0x1ca2c6b42f86    e6  e951ffffff     jmp 0x1ca2c6b42edc  <+0x3c>
0x1ca2c6b42f8b    eb  90             nop


Safepoints (size = 47)
0x1ca2c6b42f01      61    NA  00010000 (sp -> fp)  <none>
0x1ca2c6b42f42      a2    NA  11010000 (sp -> fp)  <none>
0x1ca2c6b42f77      d7    NA  01010000 (sp -> fp)  <none>

RelocInfo (size = 0)

--- End code ---
