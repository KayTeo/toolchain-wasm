(module
  (import "env" "memory" (memory 10 100 shared))

  (func $add_one_and_read (param $addr i32) (result i32)
    (i32.store
      (local.get $addr)
      (i32.add
        (i32.load (local.get $addr))
        (i32.const 1)
      )
    )

    (i32.load (local.get $addr))
  )


  (func $atomic_add_one_and_read (param $addr i32) (result i32)
    (i32.atomic.rmw.add
      (local.get $addr)
      (i32.const 1)
    )

    ;;drop
    ;;(i32.atomic.load (local.get $addr))
  )

  (func $atomic_add_one_loop(param $addr i32) (param $loops i32) (result i32)
    (local $i i32)
    (local.set $i (i32.const 0))

    ;;Begin loop
    (loop $increment_loop
    
      ;;Discard original value i32.atomic.rmw.add leaves on top of stack
      (drop
        (i32.atomic.rmw.add
          (local.get $addr)
          (i32.const 1)
        )
      )

      ;;Increment counter
      (local.set $i
        (i32.add
          (local.get $i)
          (i32.const 1)
        )
      )

      ;;Branch back to start if less than $loops
      (br_if $increment_loop
        (i32.lt_u
          (local.get $i)
          (local.get $loops)
        )
      ) 
    )

    ;;Return value at $addr
    local.get $addr
    i32.atomic.load
  )
  
  (func $getValue (param $ptr i32) (result i32)
    local.get $ptr
    i32.atomic.load
  )

  (func $atomic_store_and_load (param $mem_offset i32) (param $num_loops i32) (result i32)
    (local $i i32)
    (local $result i32)
    (local $address i32)
    (local $value i32)
    (local.set $i (i32.const 0))

    (loop $loop

      ;; Atomically load value
      (local.set $value (i32.atomic.load (local.get $address)))

      ;; Add to value
      (local.set $value
        (i32.add (local.get $value) (i32.const 1))
      )

      ;; Store value atomically
      (i32.atomic.store
        (local.get $address)
        (local.get $value)
      )
    
      (local.set $i (i32.add (local.get $i) (i32.const 1)))
      (br_if $loop (i32.lt_u (local.get $i) (local.get $num_loops)))

    )

    (local.get $result)
  )
  
  (func $atomic_store (param $mem_offset i32) (param $num_loops i32) (result i32)
    (local $i i32)
    (local $result i32)
    (local.set $i (i32.const 0))

    (loop $loop

      ;; Store value atomically
      (i32.atomic.store
        (local.get $mem_offset)
        (i32.const 31415)
      )
    
      (local.set $i (i32.add (local.get $i) (i32.const 1)))
      (br_if $loop (i32.lt_u (local.get $i) (local.get $num_loops)))

    )

    (local.get $result)
  )

  (export "add_one_and_read" (func $add_one_and_read))
  (export "atomic_add_one_and_read" (func $atomic_add_one_and_read))
  (export "atomic_add_one_loop" (func $atomic_add_one_loop))
  (export "getValue" (func $getValue))
  (export "atomic_store_and_load" (func $atomic_store_and_load))
  (export "atomic_store" (func $atomic_store))
)
