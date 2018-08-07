(module
 (type $ii (func (param i32) (result i32)))
 (type $v (func))
 (global $src/ts/main/result (mut i32) (i32.const 0))
 (memory $0 0)
 (export "memory" (memory $0))
 (start $start)
 (func $src/ts/main/fibonacci (; 0 ;) (; has Stack IR ;) (type $ii) (param $0 i32) (result i32)
  (if (result i32)
   (i32.lt_s
    (get_local $0)
    (i32.const 0)
   )
   (i32.const -1)
   (if (result i32)
    (get_local $0)
    (if (result i32)
     (i32.eq
      (get_local $0)
      (i32.const 1)
     )
     (i32.const 1)
     (i32.add
      (call $src/ts/main/fibonacci
       (i32.sub
        (get_local $0)
        (i32.const 1)
       )
      )
      (call $src/ts/main/fibonacci
       (i32.sub
        (get_local $0)
        (i32.const 2)
       )
      )
     )
    )
    (i32.const 0)
   )
  )
 )
 (func $start (; 1 ;) (; has Stack IR ;) (type $v)
  (set_global $src/ts/main/result
   (call $src/ts/main/fibonacci
    (i32.const 100)
   )
  )
 )
)
