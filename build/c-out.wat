(module
 (type $FUNCSIG$ii (func (param i32) (result i32)))
 (type $FUNCSIG$iii (func (param i32 i32) (result i32)))
 (import "env" "printf" (func $printf (param i32 i32) (result i32)))
 (table 0 anyfunc)
 (memory $0 1)
 (data (i32.const 16) "%d\00")
 (export "memory" (memory $0))
 (export "fibonacci" (func $fibonacci))
 (export "main" (func $main))
 (func $fibonacci (; 1 ;) (param $0 i32) (result i32)
  (local $1 i32)
  (set_local $1
   (i32.const 0)
  )
  (block $label$0
   (block $label$1
    (br_if $label$1
     (i32.lt_s
      (get_local $0)
      (i32.const 0)
     )
    )
    (block $label$2
     (br_if $label$2
      (i32.eqz
       (get_local $0)
      )
     )
     (set_local $1
      (i32.const 1)
     )
     (br_if $label$0
      (i32.ne
       (get_local $0)
       (i32.const 1)
      )
     )
    )
    (return
     (get_local $1)
    )
   )
   (return
    (i32.const -1)
   )
  )
  (i32.add
   (call $fibonacci
    (i32.add
     (get_local $0)
     (i32.const -1)
    )
   )
   (call $fibonacci
    (i32.add
     (get_local $0)
     (i32.const -2)
    )
   )
  )
 )
 (func $main (; 2 ;) (result i32)
  (local $0 i32)
  (i32.store offset=4
   (i32.const 0)
   (tee_local $0
    (i32.sub
     (i32.load offset=4
      (i32.const 0)
     )
     (i32.const 16)
    )
   )
  )
  (i32.store
   (get_local $0)
   (call $fibonacci
    (i32.const 100)
   )
  )
  (drop
   (call $printf
    (i32.const 16)
    (get_local $0)
   )
  )
  (i32.store offset=4
   (i32.const 0)
   (i32.add
    (get_local $0)
    (i32.const 16)
   )
  )
  (i32.const 0)
 )
)
