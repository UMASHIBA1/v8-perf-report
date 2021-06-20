(module
 (type $i32_i32_=>_i32 (func (param i32 i32) (result i32)))
 (global $~lib/memory/__data_end i32 (i32.const 8))
 (global $~lib/memory/__stack_pointer (mut i32) (i32.const 16392))
 (global $~lib/memory/__heap_base i32 (i32.const 16392))
 (memory $0 0)
 (table $0 1 funcref)
 (elem $0 (i32.const 1))
 (export "arg2" (func $assembly/index/arg2))
 (export "memory" (memory $0))
 (func $assembly/index/arg2 (param $0 i32) (param $1 i32) (result i32)
  i32.const 0
 )
)
