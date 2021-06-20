--- Code ---
kind = JS_TO_WASM_FUNCTION
name = js-to-wasm:i:i
compiler = turbofan
address = 0x320f8e682e41

Instructions (size = 144)
0x320f8e682ea0     0  55             push rbp
0x320f8e682ea1     1  4889e5         REX.W movq rbp,rsp
0x320f8e682ea4     4  56             push rsi
0x320f8e682ea5     5  57             push rdi
0x320f8e682ea6     6  4883ec10       REX.W subq rsp,0x10
0x320f8e682eaa     a  488b5f17       REX.W movq rbx,[rdi+0x17]
0x320f8e682eae     e  488b5b07       REX.W movq rbx,[rbx+0x7]
0x320f8e682eb2    12  488b530f       REX.W movq rdx,[rbx+0xf]
0x320f8e682eb6    16  488955e8       REX.W movq [rbp-0x18],rdx
0x320f8e682eba    1a  488b4510       REX.W movq rax,[rbp+0x10]
0x320f8e682ebe    1e  a801           test al,0x1
0x320f8e682ec0    20  0f8545000000   jnz 0x320f8e682f0b  <+0x6b>
0x320f8e682ec6    26  48c1e820       REX.W shrq rax, 32
0x320f8e682eca    2a  488b4a77       REX.W movq rcx,[rdx+0x77]
0x320f8e682ece    2e  488b89c0320000 REX.W movq rcx,[rcx+0x32c0]
0x320f8e682ed5    35  c70101000000   movl [rcx],0x1
0x320f8e682edb    3b  488b4a7f       REX.W movq rcx,[rdx+0x7f]
0x320f8e682edf    3f  48635b1b       REX.W movsxlq rbx,[rbx+0x1b]
0x320f8e682ee3    43  4803d9         REX.W addq rbx,rcx
0x320f8e682ee6    46  488bf2         REX.W movq rsi,rdx
0x320f8e682ee9    49  ffd3           call rbx
0x320f8e682eeb    4b  488b5de8       REX.W movq rbx,[rbp-0x18]
0x320f8e682eef    4f  488b5b77       REX.W movq rbx,[rbx+0x77]
0x320f8e682ef3    53  488b9bc0320000 REX.W movq rbx,[rbx+0x32c0]
0x320f8e682efa    5a  c70300000000   movl [rbx],0x0
0x320f8e682f00    60  48c1e020       REX.W shlq rax, 32
0x320f8e682f04    64  488be5         REX.W movq rsp,rbp
0x320f8e682f07    67  5d             pop rbp
0x320f8e682f08    68  c21000         ret 0x10
0x320f8e682f0b    6b  48895de0       REX.W movq [rbp-0x20],rbx
0x320f8e682f0f    6f  48b9000000007f030000 REX.W movq rcx,0x37f00000000
0x320f8e682f19    79  48c1f920       REX.W sarq rcx, 32
0x320f8e682f1d    7d  41ff94cdc8320000 call [r13+rcx*8+0x32c8]
0x320f8e682f25    85  488b5de0       REX.W movq rbx,[rbp-0x20]
0x320f8e682f29    89  488b55e8       REX.W movq rdx,[rbp-0x18]
0x320f8e682f2d    8d  eb9b           jmp 0x320f8e682eca  <+0x2a>
0x320f8e682f2f    8f  90             nop


Safepoints (size = 34)
0x320f8e682eeb      4b    NA  010000 (sp -> fp)  <none>
0x320f8e682f25      85    NA  110000 (sp -> fp)  <none>

RelocInfo (size = 0)

--- End code ---
