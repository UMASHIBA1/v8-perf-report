--- Code ---
kind = JS_TO_WASM_FUNCTION
name = js-to-wasm:iii:
compiler = turbofan
address = 0x2474c58c2e41

Instructions (size = 336)
0x2474c58c2ea0     0  55             push rbp
0x2474c58c2ea1     1  4889e5         REX.W movq rbp,rsp
0x2474c58c2ea4     4  56             push rsi
0x2474c58c2ea5     5  57             push rdi
0x2474c58c2ea6     6  4883ec28       REX.W subq rsp,0x28
0x2474c58c2eaa     a  488b5f17       REX.W movq rbx,[rdi+0x17]
0x2474c58c2eae     e  488b5b07       REX.W movq rbx,[rbx+0x7]
0x2474c58c2eb2    12  488b7b0f       REX.W movq rdi,[rbx+0xf]
0x2474c58c2eb6    16  48897de8       REX.W movq [rbp-0x18],rdi
0x2474c58c2eba    1a  488b4520       REX.W movq rax,[rbp+0x20]
0x2474c58c2ebe    1e  a801           test al,0x1
0x2474c58c2ec0    20  0f8574000000   jnz 0x2474c58c2f3a  <+0x9a>
0x2474c58c2ec6    26  48c1e820       REX.W shrq rax, 32
0x2474c58c2eca    2a  4c8b4518       REX.W movq r8,[rbp+0x18]
0x2474c58c2ece    2e  41f6c001       testb r8,0x1
0x2474c58c2ed2    32  0f8594000000   jnz 0x2474c58c2f6c  <+0xcc>
0x2474c58c2ed8    38  49c1e820       REX.W shrq r8, 32
0x2474c58c2edc    3c  4c8b4d10       REX.W movq r9,[rbp+0x10]
0x2474c58c2ee0    40  41f6c101       testb r9,0x1
0x2474c58c2ee4    44  0f85c5000000   jnz 0x2474c58c2faf  <+0x10f>
0x2474c58c2eea    4a  49c1e920       REX.W shrq r9, 32
0x2474c58c2eee    4e  4c8b5f77       REX.W movq r11,[rdi+0x77]
0x2474c58c2ef2    52  4d8b9bb0320000 REX.W movq r11,[r11+0x32b0]
0x2474c58c2ef9    59  41c70301000000 movl [r11],0x1
0x2474c58c2f00    60  4c8b5f7f       REX.W movq r11,[rdi+0x7f]
0x2474c58c2f04    64  48635b1b       REX.W movsxlq rbx,[rbx+0x1b]
0x2474c58c2f08    68  4903db         REX.W addq rbx,r11
0x2474c58c2f0b    6b  488bf7         REX.W movq rsi,rdi
0x2474c58c2f0e    6e  498bc9         REX.W movq rcx,r9
0x2474c58c2f11    71  498bd0         REX.W movq rdx,r8
0x2474c58c2f14    74  ffd3           call rbx
0x2474c58c2f16    76  488b5de8       REX.W movq rbx,[rbp-0x18]
0x2474c58c2f1a    7a  488b7b77       REX.W movq rdi,[rbx+0x77]
0x2474c58c2f1e    7e  488bbfb0320000 REX.W movq rdi,[rdi+0x32b0]
0x2474c58c2f25    85  c70700000000   movl [rdi],0x0
0x2474c58c2f2b    8b  488b5b77       REX.W movq rbx,[rbx+0x77]
0x2474c58c2f2f    8f  488b4320       REX.W movq rax,[rbx+0x20]
0x2474c58c2f33    93  488be5         REX.W movq rsp,rbp
0x2474c58c2f36    96  5d             pop rbp
0x2474c58c2f37    97  c22000         ret 0x20
0x2474c58c2f3a    9a  48895dd0       REX.W movq [rbp-0x30],rbx
0x2474c58c2f3e    9e  488975c8       REX.W movq [rbp-0x38],rsi
0x2474c58c2f42    a2  49b8000000007d030000 REX.W movq r8,0x37d00000000
0x2474c58c2f4c    ac  4c8bce         REX.W movq r9,rsi
0x2474c58c2f4f    af  49c1f820       REX.W sarq r8, 32
0x2474c58c2f53    b3  43ff94c5b8320000 call [r13+r8*8+0x32b8]
0x2474c58c2f5b    bb  488b75c8       REX.W movq rsi,[rbp-0x38]
0x2474c58c2f5f    bf  488b7de8       REX.W movq rdi,[rbp-0x18]
0x2474c58c2f63    c3  488b5dd0       REX.W movq rbx,[rbp-0x30]
0x2474c58c2f67    c7  e95effffff     jmp 0x2474c58c2eca  <+0x2a>
0x2474c58c2f6c    cc  488945e0       REX.W movq [rbp-0x20],rax
0x2474c58c2f70    d0  48895dd0       REX.W movq [rbp-0x30],rbx
0x2474c58c2f74    d4  488975c8       REX.W movq [rbp-0x38],rsi
0x2474c58c2f78    d8  4c8b0dc5ffffff REX.W movq r9,[rip+0xffffffc5]
0x2474c58c2f7f    df  4c8bd0         REX.W movq r10,rax
0x2474c58c2f82    e2  498bc0         REX.W movq rax,r8
0x2474c58c2f85    e5  4d8bc2         REX.W movq r8,r10
0x2474c58c2f88    e8  4c8bde         REX.W movq r11,rsi
0x2474c58c2f8b    eb  49c1f920       REX.W sarq r9, 32
0x2474c58c2f8f    ef  43ff94cdb8320000 call [r13+r9*8+0x32b8]
0x2474c58c2f97    f7  4c8bc0         REX.W movq r8,rax
0x2474c58c2f9a    fa  488b7de8       REX.W movq rdi,[rbp-0x18]
0x2474c58c2f9e    fe  488b45e0       REX.W movq rax,[rbp-0x20]
0x2474c58c2fa2   102  488b5dd0       REX.W movq rbx,[rbp-0x30]
0x2474c58c2fa6   106  488b75c8       REX.W movq rsi,[rbp-0x38]
0x2474c58c2faa   10a  e92dffffff     jmp 0x2474c58c2edc  <+0x3c>
0x2474c58c2faf   10f  488945e0       REX.W movq [rbp-0x20],rax
0x2474c58c2fb3   113  4c8945d8       REX.W movq [rbp-0x28],r8
0x2474c58c2fb7   117  48895dd0       REX.W movq [rbp-0x30],rbx
0x2474c58c2fbb   11b  4c8b1d82ffffff REX.W movq r11,[rip+0xffffff82]
0x2474c58c2fc2   122  4c8bd0         REX.W movq r10,rax
0x2474c58c2fc5   125  498bc1         REX.W movq rax,r9
0x2474c58c2fc8   128  4d8bca         REX.W movq r9,r10
0x2474c58c2fcb   12b  49c1fb20       REX.W sarq r11, 32
0x2474c58c2fcf   12f  43ff94ddb8320000 call [r13+r11*8+0x32b8]
0x2474c58c2fd7   137  4c8bc8         REX.W movq r9,rax
0x2474c58c2fda   13a  488b7de8       REX.W movq rdi,[rbp-0x18]
0x2474c58c2fde   13e  488b45e0       REX.W movq rax,[rbp-0x20]
0x2474c58c2fe2   142  4c8b45d8       REX.W movq r8,[rbp-0x28]
0x2474c58c2fe6   146  488b5dd0       REX.W movq rbx,[rbp-0x30]
0x2474c58c2fea   14a  e9fffeffff     jmp 0x2474c58c2eee  <+0x4e>
0x2474c58c2fef   14f  90             nop


Safepoints (size = 64)
0x2474c58c2f16      76    NA  000010000 (sp -> fp)  <none>
0x2474c58c2f5b      bb    NA  110010000 (sp -> fp)  <none>
0x2474c58c2f97      f7    NA  110010000 (sp -> fp)  <none>
0x2474c58c2fd7     137    NA  010010000 (sp -> fp)  <none>

RelocInfo (size = 0)

--- End code ---
--- Code ---
kind = JS_TO_WASM_FUNCTION
name = js-to-wasm:i:i
compiler = turbofan
address = 0x2474c58c3041

Instructions (size = 144)
0x2474c58c30a0     0  55             push rbp
0x2474c58c30a1     1  4889e5         REX.W movq rbp,rsp
0x2474c58c30a4     4  56             push rsi
0x2474c58c30a5     5  57             push rdi
0x2474c58c30a6     6  4883ec10       REX.W subq rsp,0x10
0x2474c58c30aa     a  488b5f17       REX.W movq rbx,[rdi+0x17]
0x2474c58c30ae     e  488b5b07       REX.W movq rbx,[rbx+0x7]
0x2474c58c30b2    12  488b530f       REX.W movq rdx,[rbx+0xf]
0x2474c58c30b6    16  488955e8       REX.W movq [rbp-0x18],rdx
0x2474c58c30ba    1a  488b4510       REX.W movq rax,[rbp+0x10]
0x2474c58c30be    1e  a801           test al,0x1
0x2474c58c30c0    20  0f8545000000   jnz 0x2474c58c310b  <+0x6b>
0x2474c58c30c6    26  48c1e820       REX.W shrq rax, 32
0x2474c58c30ca    2a  488b4a77       REX.W movq rcx,[rdx+0x77]
0x2474c58c30ce    2e  488b89b0320000 REX.W movq rcx,[rcx+0x32b0]
0x2474c58c30d5    35  c70101000000   movl [rcx],0x1
0x2474c58c30db    3b  488b4a7f       REX.W movq rcx,[rdx+0x7f]
0x2474c58c30df    3f  48635b1b       REX.W movsxlq rbx,[rbx+0x1b]
0x2474c58c30e3    43  4803d9         REX.W addq rbx,rcx
0x2474c58c30e6    46  488bf2         REX.W movq rsi,rdx
0x2474c58c30e9    49  ffd3           call rbx
0x2474c58c30eb    4b  488b5de8       REX.W movq rbx,[rbp-0x18]
0x2474c58c30ef    4f  488b5b77       REX.W movq rbx,[rbx+0x77]
0x2474c58c30f3    53  488b9bb0320000 REX.W movq rbx,[rbx+0x32b0]
0x2474c58c30fa    5a  c70300000000   movl [rbx],0x0
0x2474c58c3100    60  48c1e020       REX.W shlq rax, 32
0x2474c58c3104    64  488be5         REX.W movq rsp,rbp
0x2474c58c3107    67  5d             pop rbp
0x2474c58c3108    68  c21000         ret 0x10
0x2474c58c310b    6b  48895de0       REX.W movq [rbp-0x20],rbx
0x2474c58c310f    6f  48b9000000007d030000 REX.W movq rcx,0x37d00000000
0x2474c58c3119    79  48c1f920       REX.W sarq rcx, 32
0x2474c58c311d    7d  41ff94cdb8320000 call [r13+rcx*8+0x32b8]
0x2474c58c3125    85  488b5de0       REX.W movq rbx,[rbp-0x20]
0x2474c58c3129    89  488b55e8       REX.W movq rdx,[rbp-0x18]
0x2474c58c312d    8d  eb9b           jmp 0x2474c58c30ca  <+0x2a>
0x2474c58c312f    8f  90             nop


Safepoints (size = 34)
0x2474c58c30eb      4b    NA  010000 (sp -> fp)  <none>
0x2474c58c3125      85    NA  110000 (sp -> fp)  <none>

RelocInfo (size = 0)

--- End code ---
