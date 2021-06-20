--- Code ---
kind = JS_TO_WASM_FUNCTION
name = js-to-wasm:i:i
compiler = turbofan
address = 0xb84ad582e41

Instructions (size = 144)
0xb84ad582ea0     0  55             push rbp
0xb84ad582ea1     1  4889e5         REX.W movq rbp,rsp
0xb84ad582ea4     4  56             push rsi
0xb84ad582ea5     5  57             push rdi

;; ---------識別子:1,  arg2とほぼ同じ
0xb84ad582ea6     6  4883ec10       REX.W subq rsp,0x10 ;; arg2だと0x20,  rsp = rsp - 16 
0xb84ad582eaa     a  488b5f17       REX.W movq rbx,[rdi+0x17]
0xb84ad582eae     e  488b5b07       REX.W movq rbx,[rbx+0x7]
0xb84ad582eb2    12  488b530f       REX.W movq rdx,[rbx+0xf]
0xb84ad582eb6    16  488955e8       REX.W movq [rbp-0x18],rdx
0xb84ad582eba    1a  488b4510       REX.W movq rax,[rbp+0x10] ;; arg2だと0x18
0xb84ad582ebe    1e  a801           test al,0x1
;; ------------- ここまでarg2とほぼおなじ


;; -------- 識別子:2, ここから下arg2と命令とその数変わらない(レジスタの名前は違うのになってるけど命令の意味同じ)
0xb84ad582ec0    20  0f8545000000   jnz 0xb84ad582f0b  <+0x6b>
0xb84ad582ec6    26  48c1e820       REX.W shrq rax, 32
0xb84ad582eca    2a  488b4a77       REX.W movq rcx,[rdx+0x77]
0xb84ad582ece    2e  488b89c0320000 REX.W movq rcx,[rcx+0x32c0]
0xb84ad582ed5    35  c70101000000   movl [rcx],0x1
0xb84ad582edb    3b  488b4a7f       REX.W movq rcx,[rdx+0x7f]
0xb84ad582edf    3f  48635b1b       REX.W movsxlq rbx,[rbx+0x1b]
;; -------- ここまでarg1と変わらない


0xb84ad582ee3    43  4803d9         REX.W addq rbx,rcx
0xb84ad582ee6    46  488bf2         REX.W movq rsi,rdx


;; --識別子:3 ここからretまでarg2の場合と変わってない 
0xb84ad582ee9    49  ffd3           call rbx
0xb84ad582eeb    4b  488b5de8       REX.W movq rbx,[rbp-0x18]
0xb84ad582eef    4f  488b5b77       REX.W movq rbx,[rbx+0x77]
0xb84ad582ef3    53  488b9bc0320000 REX.W movq rbx,[rbx+0x32c0]
0xb84ad582efa    5a  c70300000000   movl [rbx],0x0
0xb84ad582f00    60  48c1e020       REX.W shlq rax, 32
0xb84ad582f04    64  488be5         REX.W movq rsp,rbp
0xb84ad582f07    67  5d             pop rbp
;; -- ここまで変わってない


0xb84ad582f08    68  c21000         ret 0x10 ;;NOTE: retがある


0xb84ad582f0b    6b  48895de0       REX.W movq [rbp-0x20],rbx
0xb84ad582f0f    6f  48b9000000007f030000 REX.W movq rcx,0x37f00000000
0xb84ad582f19    79  48c1f920       REX.W sarq rcx, 32
0xb84ad582f1d    7d  41ff94cdc8320000 call [r13+rcx*8+0x32c8] ;; callがある
0xb84ad582f25    85  488b5de0       REX.W movq rbx,[rbp-0x20]
0xb84ad582f29    89  488b55e8       REX.W movq rdx,[rbp-0x18]
0xb84ad582f2d    8d  eb9b           jmp 0xb84ad582eca  <+0x2a>
0xb84ad582f2f    8f  90             nop


Safepoints (size = 34)
0xb84ad582eeb      4b    NA  010000 (sp -> fp)  <none>
0xb84ad582f25      85    NA  110000 (sp -> fp)  <none>

RelocInfo (size = 0)

--- End code ---
