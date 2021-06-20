(module
 (type $i32_i32_=>_i32 (func (param i32 i32) (result i32)))
 (memory $0 0)
 (export "arg2" (func $assembly/index/arg2))
 (export "memory" (memory $0))
 (func $assembly/index/arg2 (param $0 i32) (param $1 i32) (result i32)
  i32.const 0
 )
)
