(module
 (type $FF (func (param f64) (result f64)))
 (type $v (func))
 (global $src/ts/main/result (mut f64) (f64.const 0))
 (memory $0 0)
 (export "memory" (memory $0))
 (start $start)
 (func $src/ts/main/fibonacci (; 0 ;) (; has Stack IR ;) (type $FF) (param $0 f64) (result f64)
  (if (result f64)
   (f64.lt
    (get_local $0)
    (f64.const 0)
   )
   (f64.const -1)
   (if (result f64)
    (f64.eq
     (get_local $0)
     (f64.const 0)
    )
    (f64.const 0)
    (if (result f64)
     (f64.eq
      (get_local $0)
      (f64.const 1)
     )
     (f64.const 1)
     (f64.add
      (call $src/ts/main/fibonacci
       (f64.sub
        (get_local $0)
        (f64.const 1)
       )
      )
      (call $src/ts/main/fibonacci
       (f64.sub
        (get_local $0)
        (f64.const 2)
       )
      )
     )
    )
   )
  )
 )
 (func $start (; 1 ;) (; has Stack IR ;) (type $v)
  (set_global $src/ts/main/result
   (call $src/ts/main/fibonacci
    (f64.const 100)
   )
  )
 )
)
