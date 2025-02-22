(module
  (memory 1) ;; Define a memory section with one page (64KB)
  (export "memory" (memory 0)) ;; Export the memory

  (func (export "store_example")
    ;; i32.atomic.store takes two arguments: 
    ;; 1. The offset in memory
    ;; 2. The value to store (i32)
    ;; In this case, we store the value 42 at memory address 0
    (i32.atomic.store (i32.const 0) (i32.const 42))
  )
)
