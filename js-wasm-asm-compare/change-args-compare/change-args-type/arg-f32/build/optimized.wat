(module
 (type $f32_=>_f32 (func (param f32) (result f32)))
 (memory $0 0)
 (export "argf32" (func $assembly/index/argf32))
 (export "memory" (memory $0))
 (func $assembly/index/argf32 (param $0 f32) (result f32)
  f32.const 0
 )
)
