(module
 (type $i32_=>_i32 (func (param i32) (result i32)))
 (memory $0 0)
 (export "argi32" (func $assembly/index/argi32))
 (export "memory" (memory $0))
 (func $assembly/index/argi32 (param $0 i32) (result i32)
  i32.const 0
 )
)
