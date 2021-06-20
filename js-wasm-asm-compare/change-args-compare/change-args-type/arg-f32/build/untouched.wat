(module
 (type $f32_=>_f32 (func (param f32) (result f32)))
 (global $~lib/memory/__data_end i32 (i32.const 8))
 (global $~lib/memory/__stack_pointer (mut i32) (i32.const 16392))
 (global $~lib/memory/__heap_base i32 (i32.const 16392))
 (memory $0 0)
 (table $0 1 funcref)
 (elem $0 (i32.const 1))
 (export "argf32" (func $assembly/index/argf32))
 (export "memory" (memory $0))
 (func $assembly/index/argf32 (param $0 f32) (result f32)
  f32.const 0
 )
)
