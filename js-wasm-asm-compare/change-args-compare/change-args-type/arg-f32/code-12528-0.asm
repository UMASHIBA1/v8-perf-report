--- Code ---
kind = JS_TO_WASM_FUNCTION
name = js-to-wasm:f:f
compiler = turbofan
address = 0x1946a26c2e41

Instructions (size = 156)
0x1946a26c2ea0     0  55             push rbp
0x1946a26c2ea1     1  4889e5         REX.W movq rbp,rsp
0x1946a26c2ea4     4  56             push rsi
0x1946a26c2ea5     5  57             push rdi
0x1946a26c2ea6     6  4883ec10       REX.W subq rsp,0x10
0x1946a26c2eaa     a  488b5f17       REX.W movq rbx,[rdi+0x17]
0x1946a26c2eae     e  488b5b07       REX.W movq rbx,[rbx+0x7]
0x1946a26c2eb2    12  488b530f       REX.W movq rdx,[rbx+0xf]
0x1946a26c2eb6    16  48895de0       REX.W movq [rbp-0x20],rbx
0x1946a26c2eba    1a  488955e8       REX.W movq [rbp-0x18],rdx
0x1946a26c2ebe    1e  48b90000000080030000 REX.W movq rcx,0x38000000000
0x1946a26c2ec8    28  488b4510       REX.W movq rax,[rbp+0x10]
0x1946a26c2ecc    2c  48c1f920       REX.W sarq rcx, 32
0x1946a26c2ed0    30  41ff94cdc8320000 call [r13+rcx*8+0x32c8]
0x1946a26c2ed8    38  488b75e8       REX.W movq rsi,[rbp-0x18]
0x1946a26c2edc    3c  488b5e77       REX.W movq rbx,[rsi+0x77]
0x1946a26c2ee0    40  488b9bc0320000 REX.W movq rbx,[rbx+0x32c0]
0x1946a26c2ee7    47  c70301000000   movl [rbx],0x1
0x1946a26c2eed    4d  488b5e7f       REX.W movq rbx,[rsi+0x7f]
0x1946a26c2ef1    51  488b55e0       REX.W movq rdx,[rbp-0x20]
0x1946a26c2ef5    55  4863521b       REX.W movsxlq rdx,[rdx+0x1b]
0x1946a26c2ef9    59  c5fb5ac8       vcvtsd2ss xmm1,xmm0,xmm0
0x1946a26c2efd    5d  4803da         REX.W addq rbx,rdx
0x1946a26c2f00    60  488bd6         REX.W movq rdx,rsi
0x1946a26c2f03    63  ffd3           call rbx
0x1946a26c2f05    65  488b5de8       REX.W movq rbx,[rbp-0x18]
0x1946a26c2f09    69  488b5b77       REX.W movq rbx,[rbx+0x77]
0x1946a26c2f0d    6d  488b9bc0320000 REX.W movq rbx,[rbx+0x32c0]
0x1946a26c2f14    74  c70300000000   movl [rbx],0x0
0x1946a26c2f1a    7a  48bb0000000020020000 REX.W movq rbx,0x22000000000
0x1946a26c2f24    84  c5f928c1       vmovapd xmm0,xmm1
0x1946a26c2f28    88  48c1fb20       REX.W sarq rbx, 32
0x1946a26c2f2c    8c  41ff94ddc8320000 call [r13+rbx*8+0x32c8]
0x1946a26c2f34    94  488be5         REX.W movq rsp,rbp
0x1946a26c2f37    97  5d             pop rbp
0x1946a26c2f38    98  c21000         ret 0x10
0x1946a26c2f3b    9b  90             nop


Safepoints (size = 47)
0x1946a26c2ed8      38    NA  110000 (sp -> fp)  <none>
0x1946a26c2f05      65    NA  010000 (sp -> fp)  <none>
0x1946a26c2f34      94    NA  000000 (sp -> fp)  <none>

RelocInfo (size = 0)

--- End code ---
