(module
  (type (;0;) (func (param i32)))
  (type (;1;) (func (param i32) (result i32)))
  (type (;2;) (func))
  (type (;3;) (func (param i32 i32)))
  (type (;4;) (func (param i32 i32) (result i32)))
  (type (;5;) (func (param i32 i32 i32) (result i32)))
  (type (;6;) (func (param i32 i32 i32)))
  (type (;7;) (func (param i32 i32 i32 i32 i32 i32)))
  (type (;8;) (func (param i32 i32 i32 i32 i32)))
  (type (;9;) (func (result i32)))
  (type (;10;) (func (param i32 i32 i32 i32)))
  (type (;11;) (func (param i32 i32 i32 i32) (result i32)))
  (type (;12;) (func (param i32 i32 i32 i32 i32) (result f64)))
  (type (;13;) (func (param i32 f64 i32 i32 i32 i32) (result i32)))
  (type (;14;) (func (result f64)))
  (type (;15;) (func (param i32 i64 i32) (result i32)))
  (type (;16;) (func (param i64 i32) (result i32)))
  (type (;17;) (func (param i32 i32 f64) (result i32)))
  (type (;18;) (func (result i64)))
  (type (;19;) (func (param i32 i32 i32 i32 i32 i32) (result i32)))
  (type (;20;) (func (param f64 i32) (result f64)))
  (type (;21;) (func (param i32 i64 i32) (result i64)))
  (import "a" "b" (func (;0;) (type 14)))
  (import "a" "c" (func (;1;) (type 2)))
  (import "a" "d" (func (;2;) (type 11)))
  (import "a" "e" (func (;3;) (type 0)))
  (import "a" "f" (func (;4;) (type 6)))
  (import "a" "g" (func (;5;) (type 11)))
  (import "a" "h" (func (;6;) (type 2)))
  (import "a" "i" (func (;7;) (type 0)))
  (import "a" "j" (func (;8;) (type 0)))
  (import "a" "k" (func (;9;) (type 0)))
  (import "a" "l" (func (;10;) (type 12)))
  (import "a" "m" (func (;11;) (type 15)))
  (import "a" "n" (func (;12;) (type 2)))
  (import "a" "o" (func (;13;) (type 1)))
  (import "a" "p" (func (;14;) (type 3)))
  (import "a" "q" (func (;15;) (type 0)))
  (import "a" "a" (memory (;0;) 256 256 shared))
  (func (;16;) (type 1) (param i32) (result i32)
    (local i32 i32 i32 i32 i32 i32 i32)
    local.get 0
    i32.load offset=8
    local.set 5
    block  ;; label = @1
      block  ;; label = @2
        local.get 0
        i32.load
        local.tee 3
        i32.const 15
        i32.and
        i32.eqz
        if  ;; label = @3
          local.get 0
          i32.const 4
          i32.add
          local.tee 1
          i32.const 0
          i32.atomic.rmw.xchg
          local.set 0
          br 1 (;@2;)
        end
        i32.const 63
        local.set 2
        global.get 3
        local.tee 4
        i32.load offset=24
        local.get 0
        i32.load offset=4
        local.tee 6
        i32.const 1073741823
        i32.and
        i32.ne
        br_if 1 (;@1;)
        block  ;; label = @3
          local.get 3
          i32.const 3
          i32.and
          i32.const 1
          i32.ne
          br_if 0 (;@3;)
          local.get 0
          i32.load offset=20
          local.tee 1
          i32.eqz
          br_if 0 (;@3;)
          local.get 0
          local.get 1
          i32.const 1
          i32.sub
          i32.store offset=20
          i32.const 0
          return
        end
        local.get 3
        i32.const 128
        i32.and
        local.tee 2
        if  ;; label = @3
          local.get 4
          local.get 0
          i32.const 16
          i32.add
          i32.store offset=84
          i32.const 0
          i32.const 1
          i32.atomic.rmw.add offset=4400
          drop
        end
        local.get 0
        i32.const 4
        i32.add
        local.set 1
        local.get 0
        i32.load offset=12
        local.tee 7
        local.get 0
        i32.load offset=16
        local.tee 0
        i32.store
        local.get 4
        i32.const 76
        i32.add
        local.get 0
        i32.ne
        if  ;; label = @3
          local.get 0
          i32.const 4
          i32.sub
          local.get 7
          i32.store
        end
        local.get 1
        local.get 6
        i32.const 1
        i32.shl
        local.get 3
        i32.const 29
        i32.shl
        i32.and
        i32.const 31
        i32.shr_s
        i32.const 2147483647
        i32.and
        i32.atomic.rmw.xchg
        local.set 0
        local.get 2
        i32.eqz
        br_if 0 (;@2;)
        local.get 4
        i32.const 0
        i32.store offset=84
        block  ;; label = @3
          i32.const 0
          i32.const -1
          i32.atomic.rmw.add offset=4400
          i32.const 1
          i32.ne
          br_if 0 (;@3;)
          i32.const 4404
          i32.load
          i32.eqz
          br_if 0 (;@3;)
          i32.const 4400
          i32.const 2147483647
          call 21
        end
      end
      i32.const 0
      local.set 2
      local.get 5
      i32.eqz
      local.get 0
      i32.const 0
      i32.ge_s
      i32.and
      br_if 0 (;@1;)
      local.get 1
      i32.const 1
      call 21
    end
    local.get 2)
  (func (;17;) (type 1) (param i32) (result i32)
    (local i32 i32 i32 i32 i32 i32)
    block  ;; label = @1
      local.get 0
      i32.load8_u
      i32.const 15
      i32.and
      br_if 0 (;@1;)
      local.get 0
      i32.const 4
      i32.add
      i32.const 0
      i32.const 10
      i32.atomic.rmw.cmpxchg
      br_if 0 (;@1;)
      i32.const 0
      return
    end
    block (result i32)  ;; label = @1
      block  ;; label = @2
        local.get 0
        i32.load
        local.tee 2
        i32.const 15
        i32.and
        i32.eqz
        if  ;; label = @3
          local.get 0
          i32.const 4
          i32.add
          i32.const 0
          i32.const 10
          i32.atomic.rmw.cmpxchg
          i32.eqz
          br_if 1 (;@2;)
          local.get 0
          i32.load
          local.set 2
        end
        local.get 0
        call 33
        local.tee 1
        i32.const 10
        i32.ne
        br_if 0 (;@2;)
        local.get 0
        i32.const 8
        i32.add
        local.set 4
        local.get 0
        i32.const 4
        i32.add
        local.set 3
        i32.const 100
        local.set 1
        loop  ;; label = @3
          block  ;; label = @4
            local.get 1
            i32.eqz
            br_if 0 (;@4;)
            local.get 3
            i32.load
            i32.eqz
            br_if 0 (;@4;)
            local.get 1
            i32.const 1
            i32.sub
            local.set 1
            local.get 4
            i32.load
            i32.eqz
            br_if 1 (;@3;)
          end
        end
        local.get 0
        call 33
        local.tee 1
        i32.const 10
        i32.ne
        br_if 0 (;@2;)
        local.get 2
        i32.const 4
        i32.and
        i32.eqz
        local.set 5
        local.get 2
        i32.const 3
        i32.and
        i32.const 2
        i32.ne
        local.set 2
        loop  ;; label = @3
          block  ;; label = @4
            local.get 3
            i32.load
            local.tee 1
            i32.const 1073741823
            i32.and
            local.tee 6
            local.get 1
            i32.const 0
            i32.ne
            local.get 5
            i32.and
            i32.or
            i32.eqz
            br_if 0 (;@4;)
            block  ;; label = @5
              local.get 2
              br_if 0 (;@5;)
              local.get 6
              global.get 3
              i32.load offset=24
              i32.ne
              br_if 0 (;@5;)
              i32.const 16
              br 4 (;@1;)
            end
            local.get 4
            i32.const 1
            i32.atomic.rmw.add
            drop
            local.get 3
            local.get 1
            local.get 1
            i32.const -2147483648
            i32.or
            local.tee 1
            i32.atomic.rmw.cmpxchg
            drop
            local.get 3
            local.get 1
            call 48
            local.set 1
            local.get 4
            i32.const 1
            i32.atomic.rmw.sub
            drop
            local.get 1
            i32.const 27
            i32.eq
            br_if 0 (;@4;)
            local.get 1
            br_if 2 (;@2;)
          end
          local.get 0
          call 33
          local.tee 1
          i32.const 10
          i32.eq
          br_if 0 (;@3;)
        end
      end
      local.get 1
    end)
  (func (;18;) (type 0) (param i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32)
    block  ;; label = @1
      local.get 0
      i32.eqz
      br_if 0 (;@1;)
      i32.const 5916
      i32.load8_u
      i32.const 2
      i32.and
      if  ;; label = @2
        i32.const 5920
        call 17
        br_if 1 (;@1;)
      end
      local.get 0
      i32.const 8
      i32.sub
      local.tee 3
      local.get 0
      i32.const 4
      i32.sub
      i32.load
      local.tee 2
      i32.const -8
      i32.and
      local.tee 0
      i32.add
      local.set 5
      block  ;; label = @2
        block  ;; label = @3
          local.get 2
          i32.const 1
          i32.and
          br_if 0 (;@3;)
          local.get 2
          i32.const 2
          i32.and
          i32.eqz
          br_if 1 (;@2;)
          local.get 3
          local.get 3
          i32.load
          local.tee 4
          i32.sub
          local.tee 3
          i32.const 5488
          i32.load
          i32.lt_u
          br_if 1 (;@2;)
          local.get 0
          local.get 4
          i32.add
          local.set 0
          block  ;; label = @4
            block  ;; label = @5
              block  ;; label = @6
                i32.const 5492
                i32.load
                local.get 3
                i32.ne
                if  ;; label = @7
                  local.get 3
                  i32.load offset=12
                  local.set 1
                  local.get 4
                  i32.const 255
                  i32.le_u
                  if  ;; label = @8
                    local.get 1
                    local.get 3
                    i32.load offset=8
                    local.tee 2
                    i32.ne
                    br_if 2 (;@6;)
                    i32.const 5472
                    i32.const 5472
                    i32.load
                    i32.const -2
                    local.get 4
                    i32.const 3
                    i32.shr_u
                    i32.rotl
                    i32.and
                    i32.store
                    br 5 (;@3;)
                  end
                  local.get 3
                  i32.load offset=24
                  local.set 7
                  local.get 1
                  local.get 3
                  i32.ne
                  if  ;; label = @8
                    local.get 3
                    i32.load offset=8
                    local.tee 2
                    local.get 1
                    i32.store offset=12
                    local.get 1
                    local.get 2
                    i32.store offset=8
                    br 4 (;@4;)
                  end
                  local.get 3
                  i32.load offset=20
                  local.tee 2
                  if (result i32)  ;; label = @8
                    local.get 3
                    i32.const 20
                    i32.add
                  else
                    local.get 3
                    i32.load offset=16
                    local.tee 2
                    i32.eqz
                    br_if 3 (;@5;)
                    local.get 3
                    i32.const 16
                    i32.add
                  end
                  local.set 4
                  loop  ;; label = @8
                    local.get 4
                    local.set 6
                    local.get 2
                    local.tee 1
                    i32.const 20
                    i32.add
                    local.set 4
                    local.get 1
                    i32.load offset=20
                    local.tee 2
                    br_if 0 (;@8;)
                    local.get 1
                    i32.const 16
                    i32.add
                    local.set 4
                    local.get 1
                    i32.load offset=16
                    local.tee 2
                    br_if 0 (;@8;)
                  end
                  local.get 6
                  i32.const 0
                  i32.store
                  br 3 (;@4;)
                end
                local.get 5
                i32.load offset=4
                local.tee 2
                i32.const 3
                i32.and
                i32.const 3
                i32.ne
                br_if 3 (;@3;)
                i32.const 5480
                local.get 0
                i32.store
                local.get 5
                local.get 2
                i32.const -2
                i32.and
                i32.store offset=4
                local.get 3
                local.get 0
                i32.const 1
                i32.or
                i32.store offset=4
                local.get 5
                local.get 0
                i32.store
                br 4 (;@2;)
              end
              local.get 2
              local.get 1
              i32.store offset=12
              local.get 1
              local.get 2
              i32.store offset=8
              br 2 (;@3;)
            end
            i32.const 0
            local.set 1
          end
          local.get 7
          i32.eqz
          br_if 0 (;@3;)
          block  ;; label = @4
            local.get 3
            i32.load offset=28
            local.tee 4
            i32.const 2
            i32.shl
            i32.const 5776
            i32.add
            local.tee 2
            i32.load
            local.get 3
            i32.eq
            if  ;; label = @5
              local.get 2
              local.get 1
              i32.store
              local.get 1
              br_if 1 (;@4;)
              i32.const 5476
              i32.const 5476
              i32.load
              i32.const -2
              local.get 4
              i32.rotl
              i32.and
              i32.store
              br 2 (;@3;)
            end
            block  ;; label = @5
              local.get 3
              local.get 7
              i32.load offset=16
              i32.eq
              if  ;; label = @6
                local.get 7
                local.get 1
                i32.store offset=16
                br 1 (;@5;)
              end
              local.get 7
              local.get 1
              i32.store offset=20
            end
            local.get 1
            i32.eqz
            br_if 1 (;@3;)
          end
          local.get 1
          local.get 7
          i32.store offset=24
          local.get 3
          i32.load offset=16
          local.tee 2
          if  ;; label = @4
            local.get 1
            local.get 2
            i32.store offset=16
            local.get 2
            local.get 1
            i32.store offset=24
          end
          local.get 3
          i32.load offset=20
          local.tee 2
          i32.eqz
          br_if 0 (;@3;)
          local.get 1
          local.get 2
          i32.store offset=20
          local.get 2
          local.get 1
          i32.store offset=24
        end
        local.get 3
        local.get 5
        i32.ge_u
        br_if 0 (;@2;)
        local.get 5
        i32.load offset=4
        local.tee 4
        i32.const 1
        i32.and
        i32.eqz
        br_if 0 (;@2;)
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              block  ;; label = @6
                local.get 4
                i32.const 2
                i32.and
                i32.eqz
                if  ;; label = @7
                  i32.const 5496
                  i32.load
                  local.get 5
                  i32.eq
                  if  ;; label = @8
                    i32.const 5496
                    local.get 3
                    i32.store
                    i32.const 5484
                    i32.const 5484
                    i32.load
                    local.get 0
                    i32.add
                    local.tee 0
                    i32.store
                    local.get 3
                    local.get 0
                    i32.const 1
                    i32.or
                    i32.store offset=4
                    local.get 3
                    i32.const 5492
                    i32.load
                    i32.ne
                    br_if 6 (;@2;)
                    i32.const 5480
                    i32.const 0
                    i32.store
                    i32.const 5492
                    i32.const 0
                    i32.store
                    br 6 (;@2;)
                  end
                  i32.const 5492
                  i32.load
                  local.tee 7
                  local.get 5
                  i32.eq
                  if  ;; label = @8
                    i32.const 5492
                    local.get 3
                    i32.store
                    i32.const 5480
                    i32.const 5480
                    i32.load
                    local.get 0
                    i32.add
                    local.tee 0
                    i32.store
                    local.get 3
                    local.get 0
                    i32.const 1
                    i32.or
                    i32.store offset=4
                    local.get 0
                    local.get 3
                    i32.add
                    local.get 0
                    i32.store
                    br 6 (;@2;)
                  end
                  local.get 4
                  i32.const -8
                  i32.and
                  local.get 0
                  i32.add
                  local.set 0
                  local.get 5
                  i32.load offset=12
                  local.set 1
                  local.get 4
                  i32.const 255
                  i32.le_u
                  if  ;; label = @8
                    local.get 5
                    i32.load offset=8
                    local.tee 2
                    local.get 1
                    i32.eq
                    if  ;; label = @9
                      i32.const 5472
                      i32.const 5472
                      i32.load
                      i32.const -2
                      local.get 4
                      i32.const 3
                      i32.shr_u
                      i32.rotl
                      i32.and
                      i32.store
                      br 5 (;@4;)
                    end
                    local.get 2
                    local.get 1
                    i32.store offset=12
                    local.get 1
                    local.get 2
                    i32.store offset=8
                    br 4 (;@4;)
                  end
                  local.get 5
                  i32.load offset=24
                  local.set 8
                  local.get 1
                  local.get 5
                  i32.ne
                  if  ;; label = @8
                    local.get 5
                    i32.load offset=8
                    local.tee 2
                    local.get 1
                    i32.store offset=12
                    local.get 1
                    local.get 2
                    i32.store offset=8
                    br 3 (;@5;)
                  end
                  local.get 5
                  i32.load offset=20
                  local.tee 2
                  if (result i32)  ;; label = @8
                    local.get 5
                    i32.const 20
                    i32.add
                  else
                    local.get 5
                    i32.load offset=16
                    local.tee 2
                    i32.eqz
                    br_if 2 (;@6;)
                    local.get 5
                    i32.const 16
                    i32.add
                  end
                  local.set 4
                  loop  ;; label = @8
                    local.get 4
                    local.set 6
                    local.get 2
                    local.tee 1
                    i32.const 20
                    i32.add
                    local.set 4
                    local.get 1
                    i32.load offset=20
                    local.tee 2
                    br_if 0 (;@8;)
                    local.get 1
                    i32.const 16
                    i32.add
                    local.set 4
                    local.get 1
                    i32.load offset=16
                    local.tee 2
                    br_if 0 (;@8;)
                  end
                  local.get 6
                  i32.const 0
                  i32.store
                  br 2 (;@5;)
                end
                local.get 5
                local.get 4
                i32.const -2
                i32.and
                i32.store offset=4
                local.get 3
                local.get 0
                i32.const 1
                i32.or
                i32.store offset=4
                local.get 0
                local.get 3
                i32.add
                local.get 0
                i32.store
                br 3 (;@3;)
              end
              i32.const 0
              local.set 1
            end
            local.get 8
            i32.eqz
            br_if 0 (;@4;)
            block  ;; label = @5
              local.get 5
              i32.load offset=28
              local.tee 4
              i32.const 2
              i32.shl
              i32.const 5776
              i32.add
              local.tee 2
              i32.load
              local.get 5
              i32.eq
              if  ;; label = @6
                local.get 2
                local.get 1
                i32.store
                local.get 1
                br_if 1 (;@5;)
                i32.const 5476
                i32.const 5476
                i32.load
                i32.const -2
                local.get 4
                i32.rotl
                i32.and
                i32.store
                br 2 (;@4;)
              end
              block  ;; label = @6
                local.get 5
                local.get 8
                i32.load offset=16
                i32.eq
                if  ;; label = @7
                  local.get 8
                  local.get 1
                  i32.store offset=16
                  br 1 (;@6;)
                end
                local.get 8
                local.get 1
                i32.store offset=20
              end
              local.get 1
              i32.eqz
              br_if 1 (;@4;)
            end
            local.get 1
            local.get 8
            i32.store offset=24
            local.get 5
            i32.load offset=16
            local.tee 2
            if  ;; label = @5
              local.get 1
              local.get 2
              i32.store offset=16
              local.get 2
              local.get 1
              i32.store offset=24
            end
            local.get 5
            i32.load offset=20
            local.tee 2
            i32.eqz
            br_if 0 (;@4;)
            local.get 1
            local.get 2
            i32.store offset=20
            local.get 2
            local.get 1
            i32.store offset=24
          end
          local.get 3
          local.get 0
          i32.const 1
          i32.or
          i32.store offset=4
          local.get 0
          local.get 3
          i32.add
          local.get 0
          i32.store
          local.get 3
          local.get 7
          i32.ne
          br_if 0 (;@3;)
          i32.const 5480
          local.get 0
          i32.store
          br 1 (;@2;)
        end
        local.get 0
        i32.const 255
        i32.le_u
        if  ;; label = @3
          local.get 0
          i32.const -8
          i32.and
          i32.const 5512
          i32.add
          local.set 2
          block (result i32)  ;; label = @4
            i32.const 5472
            i32.load
            local.tee 4
            i32.const 1
            local.get 0
            i32.const 3
            i32.shr_u
            i32.shl
            local.tee 0
            i32.and
            i32.eqz
            if  ;; label = @5
              i32.const 5472
              local.get 0
              local.get 4
              i32.or
              i32.store
              local.get 2
              br 1 (;@4;)
            end
            local.get 2
            i32.load offset=8
          end
          local.set 0
          local.get 2
          local.get 3
          i32.store offset=8
          local.get 0
          local.get 3
          i32.store offset=12
          local.get 3
          local.get 2
          i32.store offset=12
          local.get 3
          local.get 0
          i32.store offset=8
          br 1 (;@2;)
        end
        i32.const 31
        local.set 1
        local.get 0
        i32.const 16777215
        i32.le_u
        if  ;; label = @3
          local.get 0
          i32.const 38
          local.get 0
          i32.const 8
          i32.shr_u
          i32.clz
          local.tee 2
          i32.sub
          i32.shr_u
          i32.const 1
          i32.and
          local.get 2
          i32.const 1
          i32.shl
          i32.sub
          i32.const 62
          i32.add
          local.set 1
        end
        local.get 3
        local.get 1
        i32.store offset=28
        local.get 3
        i64.const 0
        i64.store offset=16 align=4
        local.get 1
        i32.const 2
        i32.shl
        i32.const 5776
        i32.add
        local.set 4
        block (result i32)  ;; label = @3
          block  ;; label = @4
            block (result i32)  ;; label = @5
              i32.const 5476
              i32.load
              local.tee 6
              i32.const 1
              local.get 1
              i32.shl
              local.tee 2
              i32.and
              i32.eqz
              if  ;; label = @6
                i32.const 5476
                local.get 2
                local.get 6
                i32.or
                i32.store
                local.get 4
                local.get 3
                i32.store
                i32.const 24
                local.set 1
                i32.const 8
                br 1 (;@5;)
              end
              local.get 0
              i32.const 25
              local.get 1
              i32.const 1
              i32.shr_u
              i32.sub
              i32.const 0
              local.get 1
              i32.const 31
              i32.ne
              select
              i32.shl
              local.set 1
              local.get 4
              i32.load
              local.set 4
              loop  ;; label = @6
                local.get 4
                local.tee 2
                i32.load offset=4
                i32.const -8
                i32.and
                local.get 0
                i32.eq
                br_if 2 (;@4;)
                local.get 1
                i32.const 29
                i32.shr_u
                local.set 4
                local.get 1
                i32.const 1
                i32.shl
                local.set 1
                local.get 2
                local.get 4
                i32.const 4
                i32.and
                i32.add
                local.tee 6
                i32.load offset=16
                local.tee 4
                br_if 0 (;@6;)
              end
              local.get 6
              local.get 3
              i32.store offset=16
              i32.const 24
              local.set 1
              local.get 2
              local.set 4
              i32.const 8
            end
            local.set 0
            local.get 3
            local.tee 2
            br 1 (;@3;)
          end
          local.get 2
          i32.load offset=8
          local.tee 4
          local.get 3
          i32.store offset=12
          local.get 2
          local.get 3
          i32.store offset=8
          i32.const 24
          local.set 0
          i32.const 8
          local.set 1
          i32.const 0
        end
        local.set 6
        local.get 1
        local.get 3
        i32.add
        local.get 4
        i32.store
        local.get 3
        local.get 2
        i32.store offset=12
        local.get 0
        local.get 3
        i32.add
        local.get 6
        i32.store
        i32.const 5504
        i32.const 5504
        i32.load
        i32.const 1
        i32.sub
        local.tee 0
        i32.const -1
        local.get 0
        select
        i32.store
      end
      i32.const 5916
      i32.load8_u
      i32.const 2
      i32.and
      i32.eqz
      br_if 0 (;@1;)
      i32.const 5920
      call 16
      drop
    end)
  (func (;19;) (type 6) (param i32 i32 i32)
    local.get 0
    i32.load8_u
    i32.const 32
    i32.and
    i32.eqz
    if  ;; label = @1
      local.get 1
      local.get 2
      local.get 0
      call 39
      drop
    end)
  (func (;20;) (type 8) (param i32 i32 i32 i32 i32)
    (local i32)
    global.get 0
    i32.const 256
    i32.sub
    local.tee 5
    global.set 0
    block  ;; label = @1
      local.get 2
      local.get 3
      i32.le_s
      br_if 0 (;@1;)
      local.get 4
      i32.const 73728
      i32.and
      br_if 0 (;@1;)
      local.get 5
      local.get 1
      i32.extend8_s
      local.get 2
      local.get 3
      i32.sub
      local.tee 3
      i32.const 256
      local.get 3
      i32.const 256
      i32.lt_u
      local.tee 1
      select
      memory.fill
      local.get 1
      i32.eqz
      if  ;; label = @2
        loop  ;; label = @3
          local.get 0
          local.get 5
          i32.const 256
          call 19
          local.get 3
          i32.const 256
          i32.sub
          local.tee 3
          i32.const 255
          i32.gt_u
          br_if 0 (;@3;)
        end
      end
      local.get 0
      local.get 5
      local.get 3
      call 19
    end
    local.get 5
    i32.const 256
    i32.add
    global.set 0)
  (func (;21;) (type 3) (param i32 i32)
    (local i32)
    block  ;; label = @1
      local.get 0
      i32.eqz
      br_if 0 (;@1;)
      local.get 1
      i32.const 0
      i32.lt_s
      br_if 0 (;@1;)
      local.get 0
      i32.const 3
      i32.and
      br_if 0 (;@1;)
      local.get 1
      i32.eqz
      if  ;; label = @2
        return
      end
      local.get 0
      i32.const 0
      local.get 0
      i32.const 0
      i32.atomic.rmw.cmpxchg offset=3052
      local.tee 2
      local.get 0
      local.get 2
      i32.eq
      select
      local.set 2
      block  ;; label = @2
        local.get 1
        i32.const 2147483647
        i32.eq
        br_if 0 (;@2;)
        local.get 0
        local.get 2
        i32.ne
        br_if 0 (;@2;)
        local.get 1
        i32.const 1
        i32.eq
        br_if 1 (;@1;)
        local.get 1
        i32.const 1
        i32.sub
        local.set 1
      end
      local.get 0
      local.get 1
      memory.atomic.notify
      drop
    end)
  (func (;22;) (type 2)
    call 62
    unreachable)
  (func (;23;) (type 1) (param i32) (result i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32)
    i32.const 5448
    i32.load
    i32.eqz
    if  ;; label = @1
      call 64
    end
    block  ;; label = @1
      i32.const 5916
      i32.load8_u
      i32.const 2
      i32.and
      if  ;; label = @2
        i32.const 5920
        call 17
        br_if 1 (;@1;)
      end
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              block  ;; label = @6
                block  ;; label = @7
                  block  ;; label = @8
                    block  ;; label = @9
                      local.get 0
                      i32.const 244
                      i32.le_u
                      if  ;; label = @10
                        i32.const 5472
                        i32.load
                        local.tee 2
                        i32.const 16
                        local.get 0
                        i32.const 11
                        i32.add
                        i32.const 504
                        i32.and
                        local.get 0
                        i32.const 11
                        i32.lt_u
                        select
                        local.tee 5
                        i32.const 3
                        i32.shr_u
                        local.tee 0
                        i32.shr_u
                        local.tee 1
                        i32.const 3
                        i32.and
                        if  ;; label = @11
                          block  ;; label = @12
                            local.get 1
                            i32.const -1
                            i32.xor
                            i32.const 1
                            i32.and
                            local.get 0
                            i32.add
                            local.tee 1
                            i32.const 3
                            i32.shl
                            local.tee 0
                            i32.const 5512
                            i32.add
                            local.tee 5
                            local.get 0
                            i32.const 5520
                            i32.add
                            i32.load
                            local.tee 0
                            i32.load offset=8
                            local.tee 3
                            i32.eq
                            if  ;; label = @13
                              i32.const 5472
                              local.get 2
                              i32.const -2
                              local.get 1
                              i32.rotl
                              i32.and
                              i32.store
                              br 1 (;@12;)
                            end
                            local.get 3
                            local.get 5
                            i32.store offset=12
                            local.get 5
                            local.get 3
                            i32.store offset=8
                          end
                          local.get 0
                          i32.const 8
                          i32.add
                          local.set 4
                          local.get 0
                          local.get 1
                          i32.const 3
                          i32.shl
                          local.tee 1
                          i32.const 3
                          i32.or
                          i32.store offset=4
                          local.get 0
                          local.get 1
                          i32.add
                          local.tee 0
                          local.get 0
                          i32.load offset=4
                          i32.const 1
                          i32.or
                          i32.store offset=4
                          br 9 (;@2;)
                        end
                        local.get 5
                        i32.const 5480
                        i32.load
                        local.tee 3
                        i32.le_u
                        br_if 1 (;@9;)
                        local.get 1
                        if  ;; label = @11
                          block  ;; label = @12
                            i32.const 2
                            local.get 0
                            i32.shl
                            local.tee 4
                            i32.const 0
                            local.get 4
                            i32.sub
                            i32.or
                            local.get 1
                            local.get 0
                            i32.shl
                            i32.and
                            i32.ctz
                            local.tee 1
                            i32.const 3
                            i32.shl
                            local.tee 0
                            i32.const 5512
                            i32.add
                            local.tee 4
                            local.get 0
                            i32.const 5520
                            i32.add
                            i32.load
                            local.tee 0
                            i32.load offset=8
                            local.tee 6
                            i32.eq
                            if  ;; label = @13
                              i32.const 5472
                              local.get 2
                              i32.const -2
                              local.get 1
                              i32.rotl
                              i32.and
                              local.tee 2
                              i32.store
                              br 1 (;@12;)
                            end
                            local.get 6
                            local.get 4
                            i32.store offset=12
                            local.get 4
                            local.get 6
                            i32.store offset=8
                          end
                          local.get 0
                          local.get 5
                          i32.const 3
                          i32.or
                          i32.store offset=4
                          local.get 0
                          local.get 5
                          i32.add
                          local.tee 7
                          local.get 1
                          i32.const 3
                          i32.shl
                          local.tee 1
                          local.get 5
                          i32.sub
                          local.tee 6
                          i32.const 1
                          i32.or
                          i32.store offset=4
                          local.get 0
                          local.get 1
                          i32.add
                          local.get 6
                          i32.store
                          local.get 3
                          if  ;; label = @12
                            local.get 3
                            i32.const -8
                            i32.and
                            i32.const 5512
                            i32.add
                            local.set 1
                            i32.const 5492
                            i32.load
                            local.set 5
                            block (result i32)  ;; label = @13
                              local.get 2
                              i32.const 1
                              local.get 3
                              i32.const 3
                              i32.shr_u
                              i32.shl
                              local.tee 3
                              i32.and
                              i32.eqz
                              if  ;; label = @14
                                i32.const 5472
                                local.get 2
                                local.get 3
                                i32.or
                                i32.store
                                local.get 1
                                br 1 (;@13;)
                              end
                              local.get 1
                              i32.load offset=8
                            end
                            local.set 2
                            local.get 1
                            local.get 5
                            i32.store offset=8
                            local.get 2
                            local.get 5
                            i32.store offset=12
                            local.get 5
                            local.get 1
                            i32.store offset=12
                            local.get 5
                            local.get 2
                            i32.store offset=8
                          end
                          local.get 0
                          i32.const 8
                          i32.add
                          local.set 4
                          i32.const 5492
                          local.get 7
                          i32.store
                          i32.const 5480
                          local.get 6
                          i32.store
                          br 9 (;@2;)
                        end
                        i32.const 5476
                        i32.load
                        local.tee 8
                        i32.eqz
                        br_if 1 (;@9;)
                        local.get 8
                        i32.ctz
                        i32.const 2
                        i32.shl
                        i32.const 5776
                        i32.add
                        i32.load
                        local.tee 2
                        i32.load offset=4
                        i32.const -8
                        i32.and
                        local.get 5
                        i32.sub
                        local.set 6
                        local.get 2
                        local.set 0
                        loop  ;; label = @11
                          block  ;; label = @12
                            local.get 0
                            i32.load offset=16
                            local.tee 1
                            i32.eqz
                            if  ;; label = @13
                              local.get 0
                              i32.load offset=20
                              local.tee 1
                              i32.eqz
                              br_if 1 (;@12;)
                            end
                            local.get 1
                            i32.load offset=4
                            i32.const -8
                            i32.and
                            local.get 5
                            i32.sub
                            local.tee 0
                            local.get 6
                            local.get 0
                            local.get 6
                            i32.lt_u
                            local.tee 0
                            select
                            local.set 6
                            local.get 1
                            local.get 2
                            local.get 0
                            select
                            local.set 2
                            local.get 1
                            local.set 0
                            br 1 (;@11;)
                          end
                        end
                        local.get 2
                        i32.load offset=24
                        local.set 7
                        block  ;; label = @11
                          local.get 2
                          local.get 2
                          i32.load offset=12
                          local.tee 1
                          i32.ne
                          if  ;; label = @12
                            local.get 2
                            i32.load offset=8
                            local.tee 0
                            local.get 1
                            i32.store offset=12
                            local.get 1
                            local.get 0
                            i32.store offset=8
                            br 1 (;@11;)
                          end
                          block  ;; label = @12
                            local.get 2
                            i32.load offset=20
                            local.tee 0
                            if (result i32)  ;; label = @13
                              local.get 2
                              i32.const 20
                              i32.add
                            else
                              local.get 2
                              i32.load offset=16
                              local.tee 0
                              i32.eqz
                              br_if 1 (;@12;)
                              local.get 2
                              i32.const 16
                              i32.add
                            end
                            local.set 3
                            loop  ;; label = @13
                              local.get 3
                              local.set 4
                              local.get 0
                              local.tee 1
                              i32.const 20
                              i32.add
                              local.set 3
                              local.get 0
                              i32.load offset=20
                              local.tee 0
                              br_if 0 (;@13;)
                              local.get 1
                              i32.const 16
                              i32.add
                              local.set 3
                              local.get 1
                              i32.load offset=16
                              local.tee 0
                              br_if 0 (;@13;)
                            end
                            local.get 4
                            i32.const 0
                            i32.store
                            br 1 (;@11;)
                          end
                          i32.const 0
                          local.set 1
                        end
                        block  ;; label = @11
                          local.get 7
                          i32.eqz
                          br_if 0 (;@11;)
                          block  ;; label = @12
                            local.get 2
                            i32.load offset=28
                            local.tee 0
                            i32.const 2
                            i32.shl
                            i32.const 5776
                            i32.add
                            local.tee 3
                            i32.load
                            local.get 2
                            i32.eq
                            if  ;; label = @13
                              local.get 3
                              local.get 1
                              i32.store
                              local.get 1
                              br_if 1 (;@12;)
                              i32.const 5476
                              local.get 8
                              i32.const -2
                              local.get 0
                              i32.rotl
                              i32.and
                              i32.store
                              br 2 (;@11;)
                            end
                            block  ;; label = @13
                              local.get 2
                              local.get 7
                              i32.load offset=16
                              i32.eq
                              if  ;; label = @14
                                local.get 7
                                local.get 1
                                i32.store offset=16
                                br 1 (;@13;)
                              end
                              local.get 7
                              local.get 1
                              i32.store offset=20
                            end
                            local.get 1
                            i32.eqz
                            br_if 1 (;@11;)
                          end
                          local.get 1
                          local.get 7
                          i32.store offset=24
                          local.get 2
                          i32.load offset=16
                          local.tee 0
                          if  ;; label = @12
                            local.get 1
                            local.get 0
                            i32.store offset=16
                            local.get 0
                            local.get 1
                            i32.store offset=24
                          end
                          local.get 2
                          i32.load offset=20
                          local.tee 0
                          i32.eqz
                          br_if 0 (;@11;)
                          local.get 1
                          local.get 0
                          i32.store offset=20
                          local.get 0
                          local.get 1
                          i32.store offset=24
                        end
                        block  ;; label = @11
                          local.get 6
                          i32.const 15
                          i32.le_u
                          if  ;; label = @12
                            local.get 2
                            local.get 5
                            local.get 6
                            i32.add
                            local.tee 0
                            i32.const 3
                            i32.or
                            i32.store offset=4
                            local.get 0
                            local.get 2
                            i32.add
                            local.tee 0
                            local.get 0
                            i32.load offset=4
                            i32.const 1
                            i32.or
                            i32.store offset=4
                            br 1 (;@11;)
                          end
                          local.get 2
                          local.get 5
                          i32.const 3
                          i32.or
                          i32.store offset=4
                          local.get 2
                          local.get 5
                          i32.add
                          local.tee 5
                          local.get 6
                          i32.const 1
                          i32.or
                          i32.store offset=4
                          local.get 5
                          local.get 6
                          i32.add
                          local.get 6
                          i32.store
                          i32.const 5480
                          i32.load
                          local.tee 3
                          if  ;; label = @12
                            local.get 3
                            i32.const -8
                            i32.and
                            i32.const 5512
                            i32.add
                            local.set 0
                            i32.const 5492
                            i32.load
                            local.set 1
                            block (result i32)  ;; label = @13
                              i32.const 5472
                              i32.load
                              local.tee 4
                              i32.const 1
                              local.get 3
                              i32.const 3
                              i32.shr_u
                              i32.shl
                              local.tee 3
                              i32.and
                              i32.eqz
                              if  ;; label = @14
                                i32.const 5472
                                local.get 3
                                local.get 4
                                i32.or
                                i32.store
                                local.get 0
                                br 1 (;@13;)
                              end
                              local.get 0
                              i32.load offset=8
                            end
                            local.set 3
                            local.get 0
                            local.get 1
                            i32.store offset=8
                            local.get 3
                            local.get 1
                            i32.store offset=12
                            local.get 1
                            local.get 0
                            i32.store offset=12
                            local.get 1
                            local.get 3
                            i32.store offset=8
                          end
                          i32.const 5492
                          local.get 5
                          i32.store
                          i32.const 5480
                          local.get 6
                          i32.store
                        end
                        local.get 2
                        i32.const 8
                        i32.add
                        local.set 4
                        br 8 (;@2;)
                      end
                      i32.const -1
                      local.set 5
                      local.get 0
                      i32.const -65
                      i32.gt_u
                      br_if 0 (;@9;)
                      local.get 0
                      i32.const 11
                      i32.add
                      local.tee 1
                      i32.const -8
                      i32.and
                      local.set 5
                      i32.const 5476
                      i32.load
                      local.tee 7
                      i32.eqz
                      br_if 0 (;@9;)
                      i32.const 31
                      local.set 8
                      i32.const 0
                      local.get 5
                      i32.sub
                      local.set 4
                      local.get 0
                      i32.const 16777204
                      i32.le_u
                      if  ;; label = @10
                        local.get 5
                        i32.const 38
                        local.get 1
                        i32.const 8
                        i32.shr_u
                        i32.clz
                        local.tee 0
                        i32.sub
                        i32.shr_u
                        i32.const 1
                        i32.and
                        local.get 0
                        i32.const 1
                        i32.shl
                        i32.sub
                        i32.const 62
                        i32.add
                        local.set 8
                      end
                      block  ;; label = @10
                        block  ;; label = @11
                          block  ;; label = @12
                            local.get 8
                            i32.const 2
                            i32.shl
                            i32.const 5776
                            i32.add
                            i32.load
                            local.tee 1
                            i32.eqz
                            if  ;; label = @13
                              i32.const 0
                              local.set 0
                              br 1 (;@12;)
                            end
                            i32.const 0
                            local.set 0
                            local.get 5
                            i32.const 25
                            local.get 8
                            i32.const 1
                            i32.shr_u
                            i32.sub
                            i32.const 0
                            local.get 8
                            i32.const 31
                            i32.ne
                            select
                            i32.shl
                            local.set 2
                            loop  ;; label = @13
                              block  ;; label = @14
                                local.get 1
                                i32.load offset=4
                                i32.const -8
                                i32.and
                                local.get 5
                                i32.sub
                                local.tee 6
                                local.get 4
                                i32.ge_u
                                br_if 0 (;@14;)
                                local.get 1
                                local.set 3
                                local.get 6
                                local.tee 4
                                br_if 0 (;@14;)
                                i32.const 0
                                local.set 4
                                local.get 1
                                local.set 0
                                br 3 (;@11;)
                              end
                              local.get 0
                              local.get 1
                              i32.load offset=20
                              local.tee 6
                              local.get 6
                              local.get 1
                              local.get 2
                              i32.const 29
                              i32.shr_u
                              i32.const 4
                              i32.and
                              i32.add
                              i32.load offset=16
                              local.tee 1
                              i32.eq
                              select
                              local.get 0
                              local.get 6
                              select
                              local.set 0
                              local.get 2
                              i32.const 1
                              i32.shl
                              local.set 2
                              local.get 1
                              br_if 0 (;@13;)
                            end
                          end
                          local.get 0
                          local.get 3
                          i32.or
                          i32.eqz
                          if  ;; label = @12
                            i32.const 0
                            local.set 3
                            i32.const 2
                            local.get 8
                            i32.shl
                            local.tee 0
                            i32.const 0
                            local.get 0
                            i32.sub
                            i32.or
                            local.get 7
                            i32.and
                            local.tee 0
                            i32.eqz
                            br_if 3 (;@9;)
                            local.get 0
                            i32.ctz
                            i32.const 2
                            i32.shl
                            i32.const 5776
                            i32.add
                            i32.load
                            local.set 0
                          end
                          local.get 0
                          i32.eqz
                          br_if 1 (;@10;)
                        end
                        loop  ;; label = @11
                          local.get 0
                          i32.load offset=4
                          i32.const -8
                          i32.and
                          local.get 5
                          i32.sub
                          local.tee 2
                          local.get 4
                          i32.lt_u
                          local.set 1
                          local.get 2
                          local.get 4
                          local.get 1
                          select
                          local.set 4
                          local.get 0
                          local.get 3
                          local.get 1
                          select
                          local.set 3
                          local.get 0
                          i32.load offset=16
                          local.tee 1
                          if (result i32)  ;; label = @12
                            local.get 1
                          else
                            local.get 0
                            i32.load offset=20
                          end
                          local.tee 0
                          br_if 0 (;@11;)
                        end
                      end
                      local.get 3
                      i32.eqz
                      br_if 0 (;@9;)
                      local.get 4
                      i32.const 5480
                      i32.load
                      local.get 5
                      i32.sub
                      i32.ge_u
                      br_if 0 (;@9;)
                      local.get 3
                      i32.load offset=24
                      local.set 8
                      local.get 3
                      local.get 3
                      i32.load offset=12
                      local.tee 0
                      i32.ne
                      if  ;; label = @10
                        local.get 3
                        i32.load offset=8
                        local.tee 1
                        local.get 0
                        i32.store offset=12
                        local.get 0
                        local.get 1
                        i32.store offset=8
                        br 7 (;@3;)
                      end
                      local.get 3
                      i32.load offset=20
                      local.tee 1
                      if (result i32)  ;; label = @10
                        local.get 3
                        i32.const 20
                        i32.add
                      else
                        local.get 3
                        i32.load offset=16
                        local.tee 1
                        i32.eqz
                        br_if 2 (;@8;)
                        local.get 3
                        i32.const 16
                        i32.add
                      end
                      local.set 2
                      loop  ;; label = @10
                        local.get 2
                        local.set 6
                        local.get 1
                        local.tee 0
                        i32.const 20
                        i32.add
                        local.set 2
                        local.get 0
                        i32.load offset=20
                        local.tee 1
                        br_if 0 (;@10;)
                        local.get 0
                        i32.const 16
                        i32.add
                        local.set 2
                        local.get 0
                        i32.load offset=16
                        local.tee 1
                        br_if 0 (;@10;)
                      end
                      local.get 6
                      i32.const 0
                      i32.store
                      br 6 (;@3;)
                    end
                    local.get 5
                    i32.const 5480
                    i32.load
                    local.tee 3
                    i32.le_u
                    if  ;; label = @9
                      i32.const 5492
                      i32.load
                      local.set 0
                      block  ;; label = @10
                        local.get 3
                        local.get 5
                        i32.sub
                        local.tee 1
                        i32.const 16
                        i32.ge_u
                        if  ;; label = @11
                          local.get 0
                          local.get 5
                          i32.add
                          local.tee 2
                          local.get 1
                          i32.const 1
                          i32.or
                          i32.store offset=4
                          local.get 0
                          local.get 3
                          i32.add
                          local.get 1
                          i32.store
                          local.get 0
                          local.get 5
                          i32.const 3
                          i32.or
                          i32.store offset=4
                          br 1 (;@10;)
                        end
                        local.get 0
                        local.get 3
                        i32.const 3
                        i32.or
                        i32.store offset=4
                        local.get 0
                        local.get 3
                        i32.add
                        local.tee 1
                        local.get 1
                        i32.load offset=4
                        i32.const 1
                        i32.or
                        i32.store offset=4
                        i32.const 0
                        local.set 2
                        i32.const 0
                        local.set 1
                      end
                      i32.const 5480
                      local.get 1
                      i32.store
                      i32.const 5492
                      local.get 2
                      i32.store
                      local.get 0
                      i32.const 8
                      i32.add
                      local.set 4
                      br 7 (;@2;)
                    end
                    local.get 5
                    i32.const 5484
                    i32.load
                    local.tee 0
                    i32.lt_u
                    if  ;; label = @9
                      i32.const 5484
                      local.get 0
                      local.get 5
                      i32.sub
                      local.tee 1
                      i32.store
                      i32.const 5496
                      i32.const 5496
                      i32.load
                      local.tee 0
                      local.get 5
                      i32.add
                      local.tee 2
                      i32.store
                      local.get 2
                      local.get 1
                      i32.const 1
                      i32.or
                      i32.store offset=4
                      local.get 0
                      local.get 5
                      i32.const 3
                      i32.or
                      i32.store offset=4
                      local.get 0
                      i32.const 8
                      i32.add
                      local.set 4
                      br 7 (;@2;)
                    end
                    i32.const 0
                    local.set 4
                    i32.const 5448
                    i32.load
                    i32.eqz
                    if  ;; label = @9
                      call 64
                    end
                    i32.const 5456
                    i32.load
                    local.tee 0
                    local.get 5
                    i32.const 47
                    i32.add
                    local.tee 6
                    i32.add
                    i32.const 0
                    local.get 0
                    i32.sub
                    i32.and
                    local.tee 3
                    local.get 5
                    i32.le_u
                    br_if 6 (;@2;)
                    i32.const 5912
                    i32.load
                    local.tee 0
                    if  ;; label = @9
                      i32.const 5904
                      i32.load
                      local.tee 1
                      local.get 3
                      i32.add
                      local.tee 2
                      local.get 1
                      i32.le_u
                      br_if 7 (;@2;)
                      local.get 0
                      local.get 2
                      i32.lt_u
                      br_if 7 (;@2;)
                    end
                    i32.const 5916
                    i32.load8_u
                    i32.const 4
                    i32.and
                    i32.eqz
                    if  ;; label = @9
                      block  ;; label = @10
                        block  ;; label = @11
                          block  ;; label = @12
                            block  ;; label = @13
                              i32.const 5496
                              i32.load
                              local.tee 1
                              if  ;; label = @14
                                i32.const 5944
                                local.set 0
                                loop  ;; label = @15
                                  local.get 0
                                  i32.load
                                  local.tee 2
                                  local.get 1
                                  i32.le_u
                                  if  ;; label = @16
                                    local.get 1
                                    local.get 2
                                    local.get 0
                                    i32.load offset=4
                                    i32.add
                                    i32.lt_u
                                    br_if 3 (;@13;)
                                  end
                                  local.get 0
                                  i32.load offset=8
                                  local.tee 0
                                  br_if 0 (;@15;)
                                end
                              end
                              i32.const 5968
                              call 17
                              drop
                              i32.const 0
                              call 27
                              local.tee 2
                              i32.const -1
                              i32.eq
                              br_if 3 (;@10;)
                              local.get 3
                              local.set 1
                              i32.const 5452
                              i32.load
                              local.tee 0
                              i32.const 1
                              i32.sub
                              local.tee 4
                              local.get 2
                              i32.and
                              if  ;; label = @14
                                local.get 1
                                local.get 2
                                i32.sub
                                local.get 2
                                local.get 4
                                i32.add
                                i32.const 0
                                local.get 0
                                i32.sub
                                i32.and
                                i32.add
                                local.set 1
                              end
                              local.get 1
                              local.get 5
                              i32.le_u
                              br_if 3 (;@10;)
                              i32.const 5912
                              i32.load
                              local.tee 0
                              if  ;; label = @14
                                i32.const 5904
                                i32.load
                                local.tee 4
                                local.get 1
                                i32.add
                                local.tee 7
                                local.get 4
                                i32.le_u
                                br_if 4 (;@10;)
                                local.get 0
                                local.get 7
                                i32.lt_u
                                br_if 4 (;@10;)
                              end
                              local.get 1
                              call 27
                              local.tee 0
                              local.get 2
                              i32.ne
                              br_if 1 (;@12;)
                              br 6 (;@7;)
                            end
                            i32.const 5968
                            call 17
                            drop
                            i32.const 5456
                            i32.load
                            local.tee 1
                            local.get 6
                            i32.const 5484
                            i32.load
                            i32.sub
                            i32.add
                            i32.const 0
                            local.get 1
                            i32.sub
                            i32.and
                            local.tee 1
                            call 27
                            local.tee 2
                            local.get 0
                            i32.load
                            local.get 0
                            i32.load offset=4
                            i32.add
                            i32.eq
                            br_if 1 (;@11;)
                            local.get 2
                            local.set 0
                          end
                          local.get 0
                          i32.const -1
                          i32.eq
                          br_if 1 (;@10;)
                          local.get 5
                          i32.const 48
                          i32.add
                          local.get 1
                          i32.gt_u
                          if  ;; label = @12
                            i32.const 5456
                            i32.load
                            local.tee 2
                            local.get 6
                            local.get 1
                            i32.sub
                            i32.add
                            i32.const 0
                            local.get 2
                            i32.sub
                            i32.and
                            local.tee 2
                            call 27
                            i32.const -1
                            i32.eq
                            br_if 2 (;@10;)
                            local.get 1
                            local.get 2
                            i32.add
                            local.set 1
                          end
                          local.get 0
                          local.set 2
                          br 4 (;@7;)
                        end
                        local.get 2
                        i32.const -1
                        i32.ne
                        br_if 3 (;@7;)
                      end
                      i32.const 5916
                      i32.const 5916
                      i32.load
                      i32.const 4
                      i32.or
                      i32.store
                      i32.const 5968
                      call 16
                      drop
                    end
                    i32.const 5968
                    call 17
                    drop
                    local.get 3
                    call 27
                    local.set 2
                    i32.const 0
                    call 27
                    local.set 0
                    i32.const 5968
                    call 16
                    drop
                    local.get 2
                    i32.const -1
                    i32.eq
                    br_if 3 (;@5;)
                    local.get 0
                    i32.const -1
                    i32.eq
                    br_if 3 (;@5;)
                    local.get 0
                    local.get 2
                    i32.le_u
                    br_if 3 (;@5;)
                    local.get 0
                    local.get 2
                    i32.sub
                    local.tee 1
                    local.get 5
                    i32.const 40
                    i32.add
                    i32.le_u
                    br_if 3 (;@5;)
                    br 2 (;@6;)
                  end
                  i32.const 0
                  local.set 0
                  br 4 (;@3;)
                end
                i32.const 5968
                call 16
                drop
              end
              i32.const 5904
              i32.const 5904
              i32.load
              local.get 1
              i32.add
              local.tee 0
              i32.store
              i32.const 5908
              i32.load
              local.get 0
              i32.lt_u
              if  ;; label = @6
                i32.const 5908
                local.get 0
                i32.store
              end
              block  ;; label = @6
                block  ;; label = @7
                  block  ;; label = @8
                    i32.const 5496
                    i32.load
                    local.tee 4
                    if  ;; label = @9
                      i32.const 5944
                      local.set 0
                      loop  ;; label = @10
                        local.get 2
                        local.get 0
                        i32.load
                        local.tee 3
                        local.get 0
                        i32.load offset=4
                        local.tee 6
                        i32.add
                        i32.eq
                        br_if 2 (;@8;)
                        local.get 0
                        i32.load offset=8
                        local.tee 0
                        br_if 0 (;@10;)
                      end
                      br 2 (;@7;)
                    end
                    i32.const 5488
                    i32.load
                    local.tee 0
                    i32.const 0
                    local.get 0
                    local.get 2
                    i32.le_u
                    select
                    i32.eqz
                    if  ;; label = @9
                      i32.const 5488
                      local.get 2
                      i32.store
                    end
                    i32.const 0
                    local.set 0
                    i32.const 5948
                    local.get 1
                    i32.store
                    i32.const 5944
                    local.get 2
                    i32.store
                    i32.const 5504
                    i32.const -1
                    i32.store
                    i32.const 5508
                    i32.const 5448
                    i32.load
                    i32.store
                    i32.const 5956
                    i32.const 0
                    i32.store
                    loop  ;; label = @9
                      local.get 0
                      i32.const 3
                      i32.shl
                      local.tee 3
                      i32.const 5520
                      i32.add
                      local.get 3
                      i32.const 5512
                      i32.add
                      local.tee 4
                      i32.store
                      local.get 3
                      i32.const 5524
                      i32.add
                      local.get 4
                      i32.store
                      local.get 0
                      i32.const 1
                      i32.add
                      local.tee 0
                      i32.const 32
                      i32.ne
                      br_if 0 (;@9;)
                    end
                    i32.const 5484
                    local.get 1
                    i32.const 40
                    i32.sub
                    local.tee 0
                    i32.const -8
                    local.get 2
                    i32.sub
                    i32.const 7
                    i32.and
                    local.tee 1
                    i32.sub
                    local.tee 3
                    i32.store
                    i32.const 5496
                    local.get 1
                    local.get 2
                    i32.add
                    local.tee 1
                    i32.store
                    local.get 1
                    local.get 3
                    i32.const 1
                    i32.or
                    i32.store offset=4
                    local.get 0
                    local.get 2
                    i32.add
                    i32.const 40
                    i32.store offset=4
                    i32.const 5500
                    i32.const 5464
                    i32.load
                    i32.store
                    br 2 (;@6;)
                  end
                  local.get 2
                  local.get 4
                  i32.le_u
                  br_if 0 (;@7;)
                  local.get 3
                  local.get 4
                  i32.gt_u
                  br_if 0 (;@7;)
                  local.get 0
                  i32.load offset=12
                  i32.const 8
                  i32.and
                  br_if 0 (;@7;)
                  local.get 0
                  local.get 1
                  local.get 6
                  i32.add
                  i32.store offset=4
                  i32.const 5496
                  local.get 4
                  i32.const -8
                  local.get 4
                  i32.sub
                  i32.const 7
                  i32.and
                  local.tee 0
                  i32.add
                  local.tee 2
                  i32.store
                  i32.const 5484
                  i32.const 5484
                  i32.load
                  local.get 1
                  i32.add
                  local.tee 1
                  local.get 0
                  i32.sub
                  local.tee 0
                  i32.store
                  local.get 2
                  local.get 0
                  i32.const 1
                  i32.or
                  i32.store offset=4
                  local.get 1
                  local.get 4
                  i32.add
                  i32.const 40
                  i32.store offset=4
                  i32.const 5500
                  i32.const 5464
                  i32.load
                  i32.store
                  br 1 (;@6;)
                end
                i32.const 5488
                i32.load
                local.get 2
                i32.gt_u
                if  ;; label = @7
                  i32.const 5488
                  local.get 2
                  i32.store
                end
                local.get 1
                local.get 2
                i32.add
                local.set 6
                i32.const 5944
                local.set 0
                block  ;; label = @7
                  loop  ;; label = @8
                    local.get 6
                    local.get 0
                    i32.load
                    local.tee 3
                    i32.ne
                    if  ;; label = @9
                      local.get 0
                      i32.load offset=8
                      local.tee 0
                      br_if 1 (;@8;)
                      br 2 (;@7;)
                    end
                  end
                  local.get 0
                  i32.load8_u offset=12
                  i32.const 8
                  i32.and
                  i32.eqz
                  br_if 3 (;@4;)
                end
                i32.const 5944
                local.set 0
                loop  ;; label = @7
                  block  ;; label = @8
                    local.get 0
                    i32.load
                    local.tee 3
                    local.get 4
                    i32.le_u
                    if  ;; label = @9
                      local.get 4
                      local.get 3
                      local.get 0
                      i32.load offset=4
                      i32.add
                      local.tee 6
                      i32.lt_u
                      br_if 1 (;@8;)
                    end
                    local.get 0
                    i32.load offset=8
                    local.set 0
                    br 1 (;@7;)
                  end
                end
                i32.const 5484
                local.get 1
                i32.const 40
                i32.sub
                local.tee 0
                i32.const -8
                local.get 2
                i32.sub
                i32.const 7
                i32.and
                local.tee 3
                i32.sub
                local.tee 7
                i32.store
                i32.const 5496
                local.get 2
                local.get 3
                i32.add
                local.tee 3
                i32.store
                local.get 3
                local.get 7
                i32.const 1
                i32.or
                i32.store offset=4
                local.get 0
                local.get 2
                i32.add
                i32.const 40
                i32.store offset=4
                i32.const 5500
                i32.const 5464
                i32.load
                i32.store
                local.get 4
                local.get 6
                i32.const 39
                local.get 6
                i32.sub
                i32.const 7
                i32.and
                i32.add
                i32.const 47
                i32.sub
                local.tee 0
                local.get 0
                local.get 4
                i32.const 16
                i32.add
                i32.lt_u
                select
                local.tee 3
                i32.const 27
                i32.store offset=4
                local.get 3
                i32.const 5952
                i64.load align=4
                i64.store offset=16 align=4
                local.get 3
                i32.const 5944
                i64.load align=4
                i64.store offset=8 align=4
                i32.const 5952
                local.get 3
                i32.const 8
                i32.add
                i32.store
                i32.const 5948
                local.get 1
                i32.store
                i32.const 5944
                local.get 2
                i32.store
                i32.const 5956
                i32.const 0
                i32.store
                local.get 3
                i32.const 24
                i32.add
                local.set 0
                loop  ;; label = @7
                  local.get 0
                  i32.const 7
                  i32.store offset=4
                  local.get 0
                  i32.const 8
                  i32.add
                  local.get 0
                  i32.const 4
                  i32.add
                  local.set 0
                  local.get 6
                  i32.lt_u
                  br_if 0 (;@7;)
                end
                local.get 3
                local.get 4
                i32.eq
                br_if 0 (;@6;)
                local.get 3
                local.get 3
                i32.load offset=4
                i32.const -2
                i32.and
                i32.store offset=4
                local.get 4
                local.get 3
                local.get 4
                i32.sub
                local.tee 2
                i32.const 1
                i32.or
                i32.store offset=4
                local.get 3
                local.get 2
                i32.store
                block (result i32)  ;; label = @7
                  local.get 2
                  i32.const 255
                  i32.le_u
                  if  ;; label = @8
                    local.get 2
                    i32.const -8
                    i32.and
                    i32.const 5512
                    i32.add
                    local.set 0
                    block (result i32)  ;; label = @9
                      i32.const 5472
                      i32.load
                      local.tee 1
                      i32.const 1
                      local.get 2
                      i32.const 3
                      i32.shr_u
                      i32.shl
                      local.tee 2
                      i32.and
                      i32.eqz
                      if  ;; label = @10
                        i32.const 5472
                        local.get 1
                        local.get 2
                        i32.or
                        i32.store
                        local.get 0
                        br 1 (;@9;)
                      end
                      local.get 0
                      i32.load offset=8
                    end
                    local.set 1
                    local.get 0
                    local.get 4
                    i32.store offset=8
                    local.get 1
                    local.get 4
                    i32.store offset=12
                    i32.const 8
                    local.set 3
                    i32.const 12
                    br 1 (;@7;)
                  end
                  i32.const 31
                  local.set 0
                  local.get 2
                  i32.const 16777215
                  i32.le_u
                  if  ;; label = @8
                    local.get 2
                    i32.const 38
                    local.get 2
                    i32.const 8
                    i32.shr_u
                    i32.clz
                    local.tee 0
                    i32.sub
                    i32.shr_u
                    i32.const 1
                    i32.and
                    local.get 0
                    i32.const 1
                    i32.shl
                    i32.sub
                    i32.const 62
                    i32.add
                    local.set 0
                  end
                  local.get 4
                  local.get 0
                  i32.store offset=28
                  local.get 4
                  i64.const 0
                  i64.store offset=16 align=4
                  local.get 0
                  i32.const 2
                  i32.shl
                  i32.const 5776
                  i32.add
                  local.set 1
                  block  ;; label = @8
                    block  ;; label = @9
                      i32.const 5476
                      i32.load
                      local.tee 3
                      i32.const 1
                      local.get 0
                      i32.shl
                      local.tee 6
                      i32.and
                      i32.eqz
                      if  ;; label = @10
                        i32.const 5476
                        local.get 3
                        local.get 6
                        i32.or
                        i32.store
                        local.get 1
                        local.get 4
                        i32.store
                        br 1 (;@9;)
                      end
                      local.get 2
                      i32.const 25
                      local.get 0
                      i32.const 1
                      i32.shr_u
                      i32.sub
                      i32.const 0
                      local.get 0
                      i32.const 31
                      i32.ne
                      select
                      i32.shl
                      local.set 0
                      local.get 1
                      i32.load
                      local.set 3
                      loop  ;; label = @10
                        local.get 3
                        local.tee 1
                        i32.load offset=4
                        i32.const -8
                        i32.and
                        local.get 2
                        i32.eq
                        br_if 2 (;@8;)
                        local.get 0
                        i32.const 29
                        i32.shr_u
                        local.set 3
                        local.get 0
                        i32.const 1
                        i32.shl
                        local.set 0
                        local.get 1
                        local.get 3
                        i32.const 4
                        i32.and
                        i32.add
                        local.tee 6
                        i32.load offset=16
                        local.tee 3
                        br_if 0 (;@10;)
                      end
                      local.get 6
                      local.get 4
                      i32.store offset=16
                    end
                    local.get 4
                    local.get 1
                    i32.store offset=24
                    i32.const 12
                    local.set 3
                    local.get 4
                    local.tee 1
                    local.set 0
                    i32.const 8
                    br 1 (;@7;)
                  end
                  local.get 1
                  i32.load offset=8
                  local.tee 0
                  local.get 4
                  i32.store offset=12
                  local.get 1
                  local.get 4
                  i32.store offset=8
                  local.get 4
                  local.get 0
                  i32.store offset=8
                  i32.const 0
                  local.set 0
                  i32.const 12
                  local.set 3
                  i32.const 24
                end
                local.get 3
                local.get 4
                i32.add
                local.get 1
                i32.store
                local.get 4
                i32.add
                local.get 0
                i32.store
              end
              i32.const 5484
              i32.load
              local.tee 0
              local.get 5
              i32.le_u
              br_if 0 (;@5;)
              i32.const 5484
              local.get 0
              local.get 5
              i32.sub
              local.tee 1
              i32.store
              i32.const 5496
              i32.const 5496
              i32.load
              local.tee 0
              local.get 5
              i32.add
              local.tee 2
              i32.store
              local.get 2
              local.get 1
              i32.const 1
              i32.or
              i32.store offset=4
              local.get 0
              local.get 5
              i32.const 3
              i32.or
              i32.store offset=4
              local.get 0
              i32.const 8
              i32.add
              local.set 4
              br 3 (;@2;)
            end
            global.get 1
            i32.const 48
            i32.store
            i32.const 0
            local.set 4
            br 2 (;@2;)
          end
          local.get 0
          local.get 2
          i32.store
          local.get 0
          local.get 0
          i32.load offset=4
          local.get 1
          i32.add
          i32.store offset=4
          local.get 2
          i32.const -8
          local.get 2
          i32.sub
          i32.const 7
          i32.and
          i32.add
          local.tee 8
          local.get 5
          i32.const 3
          i32.or
          i32.store offset=4
          local.get 3
          i32.const -8
          local.get 3
          i32.sub
          i32.const 7
          i32.and
          i32.add
          local.tee 4
          local.get 5
          local.get 8
          i32.add
          local.tee 3
          i32.sub
          local.set 6
          block  ;; label = @4
            i32.const 5496
            i32.load
            local.get 4
            i32.eq
            if  ;; label = @5
              i32.const 5496
              local.get 3
              i32.store
              i32.const 5484
              i32.const 5484
              i32.load
              local.get 6
              i32.add
              local.tee 0
              i32.store
              local.get 3
              local.get 0
              i32.const 1
              i32.or
              i32.store offset=4
              br 1 (;@4;)
            end
            i32.const 5492
            i32.load
            local.get 4
            i32.eq
            if  ;; label = @5
              i32.const 5492
              local.get 3
              i32.store
              i32.const 5480
              i32.const 5480
              i32.load
              local.get 6
              i32.add
              local.tee 0
              i32.store
              local.get 3
              local.get 0
              i32.const 1
              i32.or
              i32.store offset=4
              local.get 0
              local.get 3
              i32.add
              local.get 0
              i32.store
              br 1 (;@4;)
            end
            local.get 4
            i32.load offset=4
            local.tee 0
            i32.const 3
            i32.and
            i32.const 1
            i32.eq
            if  ;; label = @5
              local.get 0
              i32.const -8
              i32.and
              local.set 9
              local.get 4
              i32.load offset=12
              local.set 2
              block  ;; label = @6
                local.get 0
                i32.const 255
                i32.le_u
                if  ;; label = @7
                  local.get 4
                  i32.load offset=8
                  local.tee 1
                  local.get 2
                  i32.eq
                  if  ;; label = @8
                    i32.const 5472
                    i32.const 5472
                    i32.load
                    i32.const -2
                    local.get 0
                    i32.const 3
                    i32.shr_u
                    i32.rotl
                    i32.and
                    i32.store
                    br 2 (;@6;)
                  end
                  local.get 1
                  local.get 2
                  i32.store offset=12
                  local.get 2
                  local.get 1
                  i32.store offset=8
                  br 1 (;@6;)
                end
                local.get 4
                i32.load offset=24
                local.set 7
                block  ;; label = @7
                  local.get 2
                  local.get 4
                  i32.ne
                  if  ;; label = @8
                    local.get 4
                    i32.load offset=8
                    local.tee 0
                    local.get 2
                    i32.store offset=12
                    local.get 2
                    local.get 0
                    i32.store offset=8
                    br 1 (;@7;)
                  end
                  block  ;; label = @8
                    local.get 4
                    i32.load offset=20
                    local.tee 0
                    if (result i32)  ;; label = @9
                      local.get 4
                      i32.const 20
                      i32.add
                    else
                      local.get 4
                      i32.load offset=16
                      local.tee 0
                      i32.eqz
                      br_if 1 (;@8;)
                      local.get 4
                      i32.const 16
                      i32.add
                    end
                    local.set 1
                    loop  ;; label = @9
                      local.get 1
                      local.set 5
                      local.get 0
                      local.tee 2
                      i32.const 20
                      i32.add
                      local.set 1
                      local.get 0
                      i32.load offset=20
                      local.tee 0
                      br_if 0 (;@9;)
                      local.get 2
                      i32.const 16
                      i32.add
                      local.set 1
                      local.get 2
                      i32.load offset=16
                      local.tee 0
                      br_if 0 (;@9;)
                    end
                    local.get 5
                    i32.const 0
                    i32.store
                    br 1 (;@7;)
                  end
                  i32.const 0
                  local.set 2
                end
                local.get 7
                i32.eqz
                br_if 0 (;@6;)
                block  ;; label = @7
                  local.get 4
                  i32.load offset=28
                  local.tee 0
                  i32.const 2
                  i32.shl
                  i32.const 5776
                  i32.add
                  local.tee 1
                  i32.load
                  local.get 4
                  i32.eq
                  if  ;; label = @8
                    local.get 1
                    local.get 2
                    i32.store
                    local.get 2
                    br_if 1 (;@7;)
                    i32.const 5476
                    i32.const 5476
                    i32.load
                    i32.const -2
                    local.get 0
                    i32.rotl
                    i32.and
                    i32.store
                    br 2 (;@6;)
                  end
                  block  ;; label = @8
                    local.get 4
                    local.get 7
                    i32.load offset=16
                    i32.eq
                    if  ;; label = @9
                      local.get 7
                      local.get 2
                      i32.store offset=16
                      br 1 (;@8;)
                    end
                    local.get 7
                    local.get 2
                    i32.store offset=20
                  end
                  local.get 2
                  i32.eqz
                  br_if 1 (;@6;)
                end
                local.get 2
                local.get 7
                i32.store offset=24
                local.get 4
                i32.load offset=16
                local.tee 0
                if  ;; label = @7
                  local.get 2
                  local.get 0
                  i32.store offset=16
                  local.get 0
                  local.get 2
                  i32.store offset=24
                end
                local.get 4
                i32.load offset=20
                local.tee 0
                i32.eqz
                br_if 0 (;@6;)
                local.get 2
                local.get 0
                i32.store offset=20
                local.get 0
                local.get 2
                i32.store offset=24
              end
              local.get 6
              local.get 9
              i32.add
              local.set 6
              local.get 4
              local.get 9
              i32.add
              local.tee 4
              i32.load offset=4
              local.set 0
            end
            local.get 4
            local.get 0
            i32.const -2
            i32.and
            i32.store offset=4
            local.get 3
            local.get 6
            i32.const 1
            i32.or
            i32.store offset=4
            local.get 3
            local.get 6
            i32.add
            local.get 6
            i32.store
            local.get 6
            i32.const 255
            i32.le_u
            if  ;; label = @5
              local.get 6
              i32.const -8
              i32.and
              i32.const 5512
              i32.add
              local.set 0
              block (result i32)  ;; label = @6
                i32.const 5472
                i32.load
                local.tee 1
                i32.const 1
                local.get 6
                i32.const 3
                i32.shr_u
                i32.shl
                local.tee 2
                i32.and
                i32.eqz
                if  ;; label = @7
                  i32.const 5472
                  local.get 1
                  local.get 2
                  i32.or
                  i32.store
                  local.get 0
                  br 1 (;@6;)
                end
                local.get 0
                i32.load offset=8
              end
              local.set 1
              local.get 0
              local.get 3
              i32.store offset=8
              local.get 1
              local.get 3
              i32.store offset=12
              local.get 3
              local.get 0
              i32.store offset=12
              local.get 3
              local.get 1
              i32.store offset=8
              br 1 (;@4;)
            end
            i32.const 31
            local.set 2
            local.get 6
            i32.const 16777215
            i32.le_u
            if  ;; label = @5
              local.get 6
              i32.const 38
              local.get 6
              i32.const 8
              i32.shr_u
              i32.clz
              local.tee 0
              i32.sub
              i32.shr_u
              i32.const 1
              i32.and
              local.get 0
              i32.const 1
              i32.shl
              i32.sub
              i32.const 62
              i32.add
              local.set 2
            end
            local.get 3
            local.get 2
            i32.store offset=28
            local.get 3
            i64.const 0
            i64.store offset=16 align=4
            local.get 2
            i32.const 2
            i32.shl
            i32.const 5776
            i32.add
            local.set 0
            block  ;; label = @5
              block  ;; label = @6
                i32.const 5476
                i32.load
                local.tee 1
                i32.const 1
                local.get 2
                i32.shl
                local.tee 5
                i32.and
                i32.eqz
                if  ;; label = @7
                  i32.const 5476
                  local.get 1
                  local.get 5
                  i32.or
                  i32.store
                  local.get 0
                  local.get 3
                  i32.store
                  br 1 (;@6;)
                end
                local.get 6
                i32.const 25
                local.get 2
                i32.const 1
                i32.shr_u
                i32.sub
                i32.const 0
                local.get 2
                i32.const 31
                i32.ne
                select
                i32.shl
                local.set 2
                local.get 0
                i32.load
                local.set 1
                loop  ;; label = @7
                  local.get 1
                  local.tee 0
                  i32.load offset=4
                  i32.const -8
                  i32.and
                  local.get 6
                  i32.eq
                  br_if 2 (;@5;)
                  local.get 2
                  i32.const 29
                  i32.shr_u
                  local.set 1
                  local.get 2
                  i32.const 1
                  i32.shl
                  local.set 2
                  local.get 0
                  local.get 1
                  i32.const 4
                  i32.and
                  i32.add
                  local.tee 5
                  i32.load offset=16
                  local.tee 1
                  br_if 0 (;@7;)
                end
                local.get 5
                local.get 3
                i32.store offset=16
              end
              local.get 3
              local.get 0
              i32.store offset=24
              local.get 3
              local.get 3
              i32.store offset=12
              local.get 3
              local.get 3
              i32.store offset=8
              br 1 (;@4;)
            end
            local.get 0
            i32.load offset=8
            local.tee 1
            local.get 3
            i32.store offset=12
            local.get 0
            local.get 3
            i32.store offset=8
            local.get 3
            i32.const 0
            i32.store offset=24
            local.get 3
            local.get 0
            i32.store offset=12
            local.get 3
            local.get 1
            i32.store offset=8
          end
          local.get 8
          i32.const 8
          i32.add
          local.set 4
          br 1 (;@2;)
        end
        block  ;; label = @3
          local.get 8
          i32.eqz
          br_if 0 (;@3;)
          block  ;; label = @4
            local.get 3
            i32.load offset=28
            local.tee 1
            i32.const 2
            i32.shl
            i32.const 5776
            i32.add
            local.tee 2
            i32.load
            local.get 3
            i32.eq
            if  ;; label = @5
              local.get 2
              local.get 0
              i32.store
              local.get 0
              br_if 1 (;@4;)
              i32.const 5476
              local.get 7
              i32.const -2
              local.get 1
              i32.rotl
              i32.and
              local.tee 7
              i32.store
              br 2 (;@3;)
            end
            block  ;; label = @5
              local.get 3
              local.get 8
              i32.load offset=16
              i32.eq
              if  ;; label = @6
                local.get 8
                local.get 0
                i32.store offset=16
                br 1 (;@5;)
              end
              local.get 8
              local.get 0
              i32.store offset=20
            end
            local.get 0
            i32.eqz
            br_if 1 (;@3;)
          end
          local.get 0
          local.get 8
          i32.store offset=24
          local.get 3
          i32.load offset=16
          local.tee 1
          if  ;; label = @4
            local.get 0
            local.get 1
            i32.store offset=16
            local.get 1
            local.get 0
            i32.store offset=24
          end
          local.get 3
          i32.load offset=20
          local.tee 1
          i32.eqz
          br_if 0 (;@3;)
          local.get 0
          local.get 1
          i32.store offset=20
          local.get 1
          local.get 0
          i32.store offset=24
        end
        block  ;; label = @3
          local.get 4
          i32.const 15
          i32.le_u
          if  ;; label = @4
            local.get 3
            local.get 4
            local.get 5
            i32.add
            local.tee 0
            i32.const 3
            i32.or
            i32.store offset=4
            local.get 0
            local.get 3
            i32.add
            local.tee 0
            local.get 0
            i32.load offset=4
            i32.const 1
            i32.or
            i32.store offset=4
            br 1 (;@3;)
          end
          local.get 3
          local.get 5
          i32.const 3
          i32.or
          i32.store offset=4
          local.get 3
          local.get 5
          i32.add
          local.tee 2
          local.get 4
          i32.const 1
          i32.or
          i32.store offset=4
          local.get 2
          local.get 4
          i32.add
          local.get 4
          i32.store
          local.get 4
          i32.const 255
          i32.le_u
          if  ;; label = @4
            local.get 4
            i32.const -8
            i32.and
            i32.const 5512
            i32.add
            local.set 0
            block (result i32)  ;; label = @5
              i32.const 5472
              i32.load
              local.tee 1
              i32.const 1
              local.get 4
              i32.const 3
              i32.shr_u
              i32.shl
              local.tee 5
              i32.and
              i32.eqz
              if  ;; label = @6
                i32.const 5472
                local.get 1
                local.get 5
                i32.or
                i32.store
                local.get 0
                br 1 (;@5;)
              end
              local.get 0
              i32.load offset=8
            end
            local.set 1
            local.get 0
            local.get 2
            i32.store offset=8
            local.get 1
            local.get 2
            i32.store offset=12
            local.get 2
            local.get 0
            i32.store offset=12
            local.get 2
            local.get 1
            i32.store offset=8
            br 1 (;@3;)
          end
          i32.const 31
          local.set 0
          local.get 4
          i32.const 16777215
          i32.le_u
          if  ;; label = @4
            local.get 4
            i32.const 38
            local.get 4
            i32.const 8
            i32.shr_u
            i32.clz
            local.tee 0
            i32.sub
            i32.shr_u
            i32.const 1
            i32.and
            local.get 0
            i32.const 1
            i32.shl
            i32.sub
            i32.const 62
            i32.add
            local.set 0
          end
          local.get 2
          local.get 0
          i32.store offset=28
          local.get 2
          i64.const 0
          i64.store offset=16 align=4
          local.get 0
          i32.const 2
          i32.shl
          i32.const 5776
          i32.add
          local.set 1
          block  ;; label = @4
            block  ;; label = @5
              local.get 7
              i32.const 1
              local.get 0
              i32.shl
              local.tee 5
              i32.and
              i32.eqz
              if  ;; label = @6
                i32.const 5476
                local.get 5
                local.get 7
                i32.or
                i32.store
                local.get 1
                local.get 2
                i32.store
                br 1 (;@5;)
              end
              local.get 4
              i32.const 25
              local.get 0
              i32.const 1
              i32.shr_u
              i32.sub
              i32.const 0
              local.get 0
              i32.const 31
              i32.ne
              select
              i32.shl
              local.set 0
              local.get 1
              i32.load
              local.set 5
              loop  ;; label = @6
                local.get 5
                local.tee 1
                i32.load offset=4
                i32.const -8
                i32.and
                local.get 4
                i32.eq
                br_if 2 (;@4;)
                local.get 0
                i32.const 29
                i32.shr_u
                local.set 5
                local.get 0
                i32.const 1
                i32.shl
                local.set 0
                local.get 1
                local.get 5
                i32.const 4
                i32.and
                i32.add
                local.tee 6
                i32.load offset=16
                local.tee 5
                br_if 0 (;@6;)
              end
              local.get 6
              local.get 2
              i32.store offset=16
            end
            local.get 2
            local.get 1
            i32.store offset=24
            local.get 2
            local.get 2
            i32.store offset=12
            local.get 2
            local.get 2
            i32.store offset=8
            br 1 (;@3;)
          end
          local.get 1
          i32.load offset=8
          local.tee 0
          local.get 2
          i32.store offset=12
          local.get 1
          local.get 2
          i32.store offset=8
          local.get 2
          i32.const 0
          i32.store offset=24
          local.get 2
          local.get 1
          i32.store offset=12
          local.get 2
          local.get 0
          i32.store offset=8
        end
        local.get 3
        i32.const 8
        i32.add
        local.set 4
      end
      i32.const 5916
      i32.load8_u
      i32.const 2
      i32.and
      i32.eqz
      br_if 0 (;@1;)
      i32.const 5920
      call 16
      drop
    end
    local.get 4)
  (func (;24;) (type 5) (param i32 i32 i32) (result i32)
    (local i32)
    local.get 2
    i32.eqz
    if  ;; label = @1
      local.get 0
      i32.load offset=4
      local.get 1
      i32.load offset=4
      i32.eq
      return
    end
    local.get 0
    local.get 1
    i32.eq
    if  ;; label = @1
      i32.const 1
      return
    end
    local.get 1
    i32.load offset=4
    local.tee 2
    i32.load8_u
    local.set 1
    block  ;; label = @1
      local.get 0
      i32.load offset=4
      local.tee 3
      i32.load8_u
      local.tee 0
      i32.eqz
      br_if 0 (;@1;)
      local.get 0
      local.get 1
      i32.ne
      br_if 0 (;@1;)
      loop  ;; label = @2
        local.get 2
        i32.load8_u offset=1
        local.set 1
        local.get 3
        i32.load8_u offset=1
        local.tee 0
        i32.eqz
        br_if 1 (;@1;)
        local.get 2
        i32.const 1
        i32.add
        local.set 2
        local.get 3
        i32.const 1
        i32.add
        local.set 3
        local.get 0
        local.get 1
        i32.eq
        br_if 0 (;@2;)
      end
    end
    local.get 0
    local.get 1
    i32.eq)
  (func (;25;) (type 6) (param i32 i32 i32)
    (local i32 i32 i32 f64)
    i32.const 100
    local.set 3
    block  ;; label = @1
      block (result i32)  ;; label = @2
        block  ;; label = @3
          loop  ;; label = @4
            local.get 3
            if  ;; label = @5
              local.get 1
              if  ;; label = @6
                local.get 1
                i32.load
                br_if 3 (;@3;)
              end
              local.get 3
              i32.const 1
              i32.sub
              local.set 3
              local.get 0
              i32.load
              local.get 2
              i32.eq
              br_if 1 (;@4;)
              br 4 (;@1;)
            end
          end
          local.get 1
          br_if 0 (;@3;)
          i32.const 1
          br 1 (;@2;)
        end
        local.get 1
        i32.const 1
        i32.atomic.rmw.add
        drop
        i32.const 0
      end
      global.get 5
      local.set 3
      block  ;; label = @2
        local.get 0
        i32.load
        local.get 2
        i32.ne
        br_if 0 (;@2;)
        f64.const 0x1p+0 (;=1;)
        f64.const 0x1.9p+6 (;=100;)
        local.get 3
        select
        local.set 6
        global.get 3
        local.set 4
        loop  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              local.get 3
              i32.eqz
              if  ;; label = @6
                local.get 4
                i32.load8_u offset=41
                i32.const 1
                i32.ne
                br_if 1 (;@5;)
              end
              loop  ;; label = @6
                local.get 4
                i32.load offset=36
                br_if 4 (;@2;)
                local.get 0
                local.get 2
                local.get 6
                call 30
                i32.const -73
                i32.eq
                br_if 0 (;@6;)
              end
              br 1 (;@4;)
            end
            local.get 0
            local.get 2
            f64.const inf (;=inf;)
            call 30
            drop
          end
          local.get 0
          i32.load
          local.get 2
          i32.eq
          br_if 0 (;@3;)
        end
      end
      br_if 0 (;@1;)
      local.get 1
      i32.const 1
      i32.atomic.rmw.sub
      drop
    end)
  (func (;26;) (type 1) (param i32) (result i32)
    (local i32 i32)
    i32.const 1
    local.get 0
    local.get 0
    i32.const 1
    i32.le_u
    select
    local.set 1
    loop  ;; label = @1
      block  ;; label = @2
        local.get 1
        call 23
        local.tee 0
        br_if 0 (;@2;)
        i32.const 6076
        i32.atomic.load
        local.tee 2
        i32.eqz
        br_if 0 (;@2;)
        local.get 2
        call_indirect (type 2)
        br 1 (;@1;)
      end
    end
    local.get 0
    i32.eqz
    if  ;; label = @1
      call 62
      unreachable
    end
    local.get 0)
  (func (;27;) (type 1) (param i32) (result i32)
    (local i32 i32)
    local.get 0
    i32.const 7
    i32.add
    i32.const -8
    i32.and
    local.set 2
    loop  ;; label = @1
      block  ;; label = @2
        local.get 2
        i32.const 0
        i32.const 3028
        i32.atomic.load
        local.tee 0
        local.get 2
        i32.add
        local.tee 1
        local.get 0
        i32.le_u
        select
        i32.eqz
        if  ;; label = @3
          local.get 1
          memory.size
          i32.const 16
          i32.shl
          i32.le_u
          br_if 1 (;@2;)
          local.get 1
          call 13
          br_if 1 (;@2;)
        end
        global.get 1
        i32.const 48
        i32.store
        i32.const -1
        return
      end
      i32.const 0
      local.get 0
      local.get 1
      i32.atomic.rmw.cmpxchg offset=3028
      local.get 0
      i32.ne
      br_if 0 (;@1;)
    end
    local.get 0)
  (func (;28;) (type 16) (param i64 i32) (result i32)
    (local i64 i32 i32 i32)
    block  ;; label = @1
      local.get 0
      i64.const 4294967296
      i64.lt_u
      if  ;; label = @2
        local.get 0
        local.set 2
        br 1 (;@1;)
      end
      loop  ;; label = @2
        local.get 1
        i32.const 1
        i32.sub
        local.tee 1
        local.get 0
        local.get 0
        i64.const 10
        i64.div_u
        local.tee 2
        i64.const 10
        i64.mul
        i64.sub
        i32.wrap_i64
        i32.const 48
        i32.or
        i32.store8
        local.get 0
        i64.const 42949672959
        i64.gt_u
        local.get 2
        local.set 0
        br_if 0 (;@2;)
      end
    end
    local.get 2
    i64.const 0
    i64.ne
    if  ;; label = @1
      local.get 2
      i32.wrap_i64
      local.set 3
      loop  ;; label = @2
        local.get 1
        i32.const 1
        i32.sub
        local.tee 1
        local.get 3
        local.get 3
        i32.const 10
        i32.div_u
        local.tee 4
        i32.const 10
        i32.mul
        i32.sub
        i32.const 48
        i32.or
        i32.store8
        local.get 3
        i32.const 9
        i32.gt_u
        local.get 4
        local.set 3
        br_if 0 (;@2;)
      end
    end
    local.get 1)
  (func (;29;) (type 3) (param i32 i32)
    (local i32)
    local.get 1
    global.get 3
    local.tee 2
    i32.load offset=72
    local.get 0
    i32.const 2
    i32.shl
    i32.add
    local.tee 0
    i32.load
    i32.ne
    if  ;; label = @1
      local.get 0
      local.get 1
      i32.store
      local.get 2
      local.get 2
      i32.load8_u offset=42
      i32.const 1
      i32.or
      i32.store8 offset=42
    end)
  (func (;30;) (type 17) (param i32 i32 f64) (result i32)
    (local f64 i32)
    local.get 0
    i32.const 3
    i32.and
    if (result i32)  ;; label = @1
      i32.const -28
    else
      call 80
      global.get 6
      i32.eqz
      if  ;; label = @2
        block (result i32)  ;; label = @3
          call 0
          local.set 3
          i32.const 0
          i32.const 0
          local.get 0
          i32.atomic.rmw.cmpxchg offset=3052
          drop
          block  ;; label = @4
            call 0
            local.get 2
            local.get 3
            f64.add
            local.tee 2
            f64.gt
            br_if 0 (;@4;)
            block (result i32)  ;; label = @5
              loop  ;; label = @6
                i32.const 0
                local.get 0
                i32.const 0
                local.get 0
                i32.const 0
                i32.atomic.rmw.cmpxchg offset=3052
                local.tee 4
                local.get 0
                local.get 4
                i32.eq
                select
                i32.eqz
                br_if 1 (;@5;)
                drop
                call 80
                local.get 1
                local.get 0
                i32.atomic.load
                i32.eq
                if  ;; label = @7
                  i32.const 0
                  i32.const 0
                  local.get 0
                  i32.atomic.rmw.cmpxchg offset=3052
                  drop
                  call 0
                  local.get 2
                  f64.gt
                  br_if 3 (;@4;)
                  br 1 (;@6;)
                end
              end
              i32.const -6
            end
            br 1 (;@3;)
          end
          i32.const 0
          local.get 0
          i32.const 0
          i32.atomic.rmw.cmpxchg offset=3052
          drop
          i32.const -73
        end
        return
      end
      i32.const -6
      i32.const -73
      i32.const 0
      local.get 0
      local.get 1
      i64.const -1
      local.get 2
      f64.const 0x1.f4p+9 (;=1000;)
      f64.mul
      f64.const 0x1.f4p+9 (;=1000;)
      f64.mul
      i64.trunc_sat_f64_s
      local.get 2
      f64.const inf (;=inf;)
      f64.eq
      select
      memory.atomic.wait32
      local.tee 0
      i32.const 2
      i32.eq
      select
      local.get 0
      i32.const 1
      i32.eq
      select
    end)
  (func (;31;) (type 0) (param i32)
    local.get 0
    call 83
    local.get 0
    call 18)
  (func (;32;) (type 0) (param i32)
    local.get 0
    call 18)
  (func (;33;) (type 1) (param i32) (result i32)
    (local i32 i32 i32 i32 i32 i32)
    local.get 0
    i32.load8_u
    i32.const 15
    i32.and
    i32.eqz
    if  ;; label = @1
      local.get 0
      i32.const 4
      i32.add
      i32.const 0
      i32.const 10
      i32.atomic.rmw.cmpxchg
      i32.const 10
      i32.and
      return
    end
    block (result i32)  ;; label = @1
      local.get 0
      i32.load
      local.set 2
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            global.get 3
            local.tee 1
            i32.load offset=24
            local.tee 4
            local.get 0
            i32.load offset=4
            local.tee 3
            i32.const 1073741823
            i32.and
            local.tee 6
            i32.ne
            br_if 0 (;@4;)
            block  ;; label = @5
              local.get 2
              i32.const 8
              i32.and
              i32.eqz
              br_if 0 (;@5;)
              local.get 0
              i32.load offset=20
              i32.const 0
              i32.ge_s
              br_if 0 (;@5;)
              local.get 0
              i32.const 0
              i32.store offset=20
              local.get 3
              i32.const 1073741824
              i32.and
              local.set 3
              br 2 (;@3;)
            end
            local.get 2
            i32.const 3
            i32.and
            i32.const 1
            i32.ne
            br_if 0 (;@4;)
            i32.const 6
            local.set 5
            local.get 0
            i32.load offset=20
            local.tee 1
            i32.const 2147483646
            i32.gt_u
            br_if 2 (;@2;)
            local.get 0
            local.get 1
            i32.const 1
            i32.add
            i32.store offset=20
            i32.const 0
            br 3 (;@1;)
          end
          i32.const 56
          local.set 5
          local.get 6
          i32.const 1073741823
          i32.eq
          br_if 1 (;@2;)
          block  ;; label = @4
            local.get 6
            br_if 0 (;@4;)
            i32.const 0
            local.get 3
            local.get 2
            i32.const 4
            i32.and
            select
            br_if 0 (;@4;)
            local.get 3
            local.get 0
            i32.const 4
            i32.add
            local.get 3
            local.get 2
            i32.const 128
            i32.and
            if (result i32)  ;; label = @5
              local.get 1
              i32.load offset=80
              i32.eqz
              if  ;; label = @6
                local.get 1
                i32.const -12
                i32.store offset=80
              end
              local.get 0
              i32.load offset=8
              local.set 6
              local.get 1
              local.get 0
              i32.const 16
              i32.add
              i32.store offset=84
              local.get 4
              i32.const -2147483648
              i32.or
              local.get 4
              local.get 6
              select
            else
              local.get 4
            end
            local.get 3
            i32.const 1073741824
            i32.and
            i32.or
            i32.atomic.rmw.cmpxchg
            i32.eq
            br_if 1 (;@3;)
            local.get 1
            i32.const 0
            i32.store offset=84
            local.get 2
            i32.const 12
            i32.and
            i32.const 12
            i32.ne
            br_if 0 (;@4;)
            local.get 0
            i32.load offset=8
            br_if 2 (;@2;)
          end
          i32.const 10
          br 2 (;@1;)
        end
        local.get 1
        i32.load offset=76
        local.set 2
        local.get 0
        local.get 1
        i32.const 76
        i32.add
        local.tee 5
        i32.store offset=12
        local.get 0
        local.get 2
        i32.store offset=16
        local.get 0
        i32.const 16
        i32.add
        local.set 4
        local.get 2
        local.get 5
        i32.ne
        if  ;; label = @3
          local.get 2
          i32.const 4
          i32.sub
          local.get 4
          i32.store
        end
        local.get 1
        local.get 4
        i32.store offset=76
        i32.const 0
        local.set 5
        local.get 1
        i32.const 0
        i32.store offset=84
        local.get 3
        i32.eqz
        br_if 0 (;@2;)
        local.get 0
        i32.const 0
        i32.store offset=20
        i32.const 62
        br 1 (;@1;)
      end
      local.get 5
    end)
  (func (;34;) (type 5) (param i32 i32 i32) (result i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)
    global.get 0
    i32.const 16
    i32.sub
    local.tee 11
    global.set 0
    local.get 0
    call 17
    drop
    block (result i32)  ;; label = @1
      block  ;; label = @2
        local.get 0
        local.get 1
        call 85
        local.tee 3
        i32.eqz
        if  ;; label = @3
          local.get 0
          i32.load offset=28
          local.tee 3
          local.get 0
          i32.load offset=32
          i32.eq
          if  ;; label = @4
            block (result i32)  ;; label = @5
              local.get 3
              i32.const 1
              i32.shl
              i32.const 1
              local.get 3
              select
              local.tee 16
              i32.const 2
              i32.shl
              local.set 9
              i32.const 0
              local.set 3
              local.get 0
              i32.load offset=24
              local.tee 13
              i32.eqz
              if  ;; label = @6
                local.get 9
                call 23
                br 1 (;@5;)
              end
              local.get 9
              i32.const -64
              i32.ge_u
              if  ;; label = @6
                global.get 1
                i32.const 48
                i32.store
                i32.const 0
                br 1 (;@5;)
              end
              block  ;; label = @6
                i32.const 5916
                i32.load8_u
                i32.const 2
                i32.and
                if  ;; label = @7
                  i32.const 5920
                  call 17
                  br_if 1 (;@6;)
                end
                block (result i32)  ;; label = @7
                  i32.const 16
                  local.get 9
                  i32.const 11
                  i32.add
                  i32.const -8
                  i32.and
                  local.get 9
                  i32.const 11
                  i32.lt_u
                  select
                  local.set 6
                  local.get 13
                  i32.const 8
                  i32.sub
                  local.tee 5
                  i32.load offset=4
                  local.tee 10
                  i32.const -8
                  i32.and
                  local.set 4
                  block  ;; label = @8
                    local.get 10
                    i32.const 3
                    i32.and
                    i32.eqz
                    if  ;; label = @9
                      local.get 6
                      i32.const 256
                      i32.lt_u
                      br_if 1 (;@8;)
                      local.get 6
                      i32.const 4
                      i32.add
                      local.get 4
                      i32.le_u
                      if  ;; label = @10
                        local.get 5
                        local.set 3
                        local.get 4
                        local.get 6
                        i32.sub
                        i32.const 5456
                        i32.load
                        i32.const 1
                        i32.shl
                        i32.le_u
                        br_if 2 (;@8;)
                      end
                      i32.const 0
                      br 2 (;@7;)
                    end
                    local.get 4
                    local.get 5
                    i32.add
                    local.set 7
                    block  ;; label = @9
                      local.get 4
                      local.get 6
                      i32.ge_u
                      if  ;; label = @10
                        local.get 4
                        local.get 6
                        i32.sub
                        local.tee 3
                        i32.const 16
                        i32.lt_u
                        br_if 1 (;@9;)
                        local.get 5
                        local.get 6
                        local.get 10
                        i32.const 1
                        i32.and
                        i32.or
                        i32.const 2
                        i32.or
                        i32.store offset=4
                        local.get 5
                        local.get 6
                        i32.add
                        local.tee 4
                        local.get 3
                        i32.const 3
                        i32.or
                        i32.store offset=4
                        local.get 7
                        local.get 7
                        i32.load offset=4
                        i32.const 1
                        i32.or
                        i32.store offset=4
                        local.get 4
                        local.get 3
                        call 63
                        br 1 (;@9;)
                      end
                      i32.const 5496
                      i32.load
                      local.get 7
                      i32.eq
                      if  ;; label = @10
                        i32.const 5484
                        i32.load
                        local.get 4
                        i32.add
                        local.tee 4
                        local.get 6
                        i32.le_u
                        br_if 2 (;@8;)
                        local.get 5
                        local.get 6
                        local.get 10
                        i32.const 1
                        i32.and
                        i32.or
                        i32.const 2
                        i32.or
                        i32.store offset=4
                        local.get 5
                        local.get 6
                        i32.add
                        local.tee 3
                        local.get 4
                        local.get 6
                        i32.sub
                        local.tee 4
                        i32.const 1
                        i32.or
                        i32.store offset=4
                        i32.const 5484
                        local.get 4
                        i32.store
                        i32.const 5496
                        local.get 3
                        i32.store
                        br 1 (;@9;)
                      end
                      i32.const 5492
                      i32.load
                      local.get 7
                      i32.eq
                      if  ;; label = @10
                        i32.const 5480
                        i32.load
                        local.get 4
                        i32.add
                        local.tee 4
                        local.get 6
                        i32.lt_u
                        br_if 2 (;@8;)
                        block  ;; label = @11
                          local.get 4
                          local.get 6
                          i32.sub
                          local.tee 3
                          i32.const 16
                          i32.ge_u
                          if  ;; label = @12
                            local.get 5
                            local.get 6
                            local.get 10
                            i32.const 1
                            i32.and
                            i32.or
                            i32.const 2
                            i32.or
                            i32.store offset=4
                            local.get 5
                            local.get 6
                            i32.add
                            local.tee 8
                            local.get 3
                            i32.const 1
                            i32.or
                            i32.store offset=4
                            local.get 4
                            local.get 5
                            i32.add
                            local.tee 4
                            local.get 3
                            i32.store
                            local.get 4
                            local.get 4
                            i32.load offset=4
                            i32.const -2
                            i32.and
                            i32.store offset=4
                            br 1 (;@11;)
                          end
                          local.get 5
                          local.get 10
                          i32.const 1
                          i32.and
                          local.get 4
                          i32.or
                          i32.const 2
                          i32.or
                          i32.store offset=4
                          local.get 4
                          local.get 5
                          i32.add
                          local.tee 3
                          local.get 3
                          i32.load offset=4
                          i32.const 1
                          i32.or
                          i32.store offset=4
                          i32.const 0
                          local.set 3
                        end
                        i32.const 5492
                        local.get 8
                        i32.store
                        i32.const 5480
                        local.get 3
                        i32.store
                        br 1 (;@9;)
                      end
                      local.get 7
                      i32.load offset=4
                      local.tee 8
                      i32.const 2
                      i32.and
                      br_if 1 (;@8;)
                      local.get 8
                      i32.const -8
                      i32.and
                      local.get 4
                      i32.add
                      local.tee 14
                      local.get 6
                      i32.lt_u
                      br_if 1 (;@8;)
                      local.get 14
                      local.get 6
                      i32.sub
                      local.set 15
                      local.get 7
                      i32.load offset=12
                      local.set 4
                      block  ;; label = @10
                        local.get 8
                        i32.const 255
                        i32.le_u
                        if  ;; label = @11
                          local.get 7
                          i32.load offset=8
                          local.tee 3
                          local.get 4
                          i32.eq
                          if  ;; label = @12
                            i32.const 5472
                            i32.const 5472
                            i32.load
                            i32.const -2
                            local.get 8
                            i32.const 3
                            i32.shr_u
                            i32.rotl
                            i32.and
                            i32.store
                            br 2 (;@10;)
                          end
                          local.get 3
                          local.get 4
                          i32.store offset=12
                          local.get 4
                          local.get 3
                          i32.store offset=8
                          br 1 (;@10;)
                        end
                        local.get 7
                        i32.load offset=24
                        local.set 12
                        block  ;; label = @11
                          local.get 4
                          local.get 7
                          i32.ne
                          if  ;; label = @12
                            local.get 7
                            i32.load offset=8
                            local.tee 3
                            local.get 4
                            i32.store offset=12
                            local.get 4
                            local.get 3
                            i32.store offset=8
                            br 1 (;@11;)
                          end
                          block  ;; label = @12
                            local.get 7
                            i32.load offset=20
                            local.tee 3
                            if (result i32)  ;; label = @13
                              local.get 7
                              i32.const 20
                              i32.add
                            else
                              local.get 7
                              i32.load offset=16
                              local.tee 3
                              i32.eqz
                              br_if 1 (;@12;)
                              local.get 7
                              i32.const 16
                              i32.add
                            end
                            local.set 8
                            loop  ;; label = @13
                              local.get 8
                              local.set 17
                              local.get 3
                              local.tee 4
                              i32.const 20
                              i32.add
                              local.set 8
                              local.get 4
                              i32.load offset=20
                              local.tee 3
                              br_if 0 (;@13;)
                              local.get 4
                              i32.const 16
                              i32.add
                              local.set 8
                              local.get 4
                              i32.load offset=16
                              local.tee 3
                              br_if 0 (;@13;)
                            end
                            local.get 17
                            i32.const 0
                            i32.store
                            br 1 (;@11;)
                          end
                          i32.const 0
                          local.set 4
                        end
                        local.get 12
                        i32.eqz
                        br_if 0 (;@10;)
                        block  ;; label = @11
                          local.get 7
                          i32.load offset=28
                          local.tee 3
                          i32.const 2
                          i32.shl
                          i32.const 5776
                          i32.add
                          local.tee 8
                          i32.load
                          local.get 7
                          i32.eq
                          if  ;; label = @12
                            local.get 8
                            local.get 4
                            i32.store
                            local.get 4
                            br_if 1 (;@11;)
                            i32.const 5476
                            i32.const 5476
                            i32.load
                            i32.const -2
                            local.get 3
                            i32.rotl
                            i32.and
                            i32.store
                            br 2 (;@10;)
                          end
                          block  ;; label = @12
                            local.get 7
                            local.get 12
                            i32.load offset=16
                            i32.eq
                            if  ;; label = @13
                              local.get 12
                              local.get 4
                              i32.store offset=16
                              br 1 (;@12;)
                            end
                            local.get 12
                            local.get 4
                            i32.store offset=20
                          end
                          local.get 4
                          i32.eqz
                          br_if 1 (;@10;)
                        end
                        local.get 4
                        local.get 12
                        i32.store offset=24
                        local.get 7
                        i32.load offset=16
                        local.tee 3
                        if  ;; label = @11
                          local.get 4
                          local.get 3
                          i32.store offset=16
                          local.get 3
                          local.get 4
                          i32.store offset=24
                        end
                        local.get 7
                        i32.load offset=20
                        local.tee 3
                        i32.eqz
                        br_if 0 (;@10;)
                        local.get 4
                        local.get 3
                        i32.store offset=20
                        local.get 3
                        local.get 4
                        i32.store offset=24
                      end
                      local.get 15
                      i32.const 15
                      i32.le_u
                      if  ;; label = @10
                        local.get 5
                        local.get 10
                        i32.const 1
                        i32.and
                        local.get 14
                        i32.or
                        i32.const 2
                        i32.or
                        i32.store offset=4
                        local.get 5
                        local.get 14
                        i32.add
                        local.tee 3
                        local.get 3
                        i32.load offset=4
                        i32.const 1
                        i32.or
                        i32.store offset=4
                        br 1 (;@9;)
                      end
                      local.get 5
                      local.get 6
                      local.get 10
                      i32.const 1
                      i32.and
                      i32.or
                      i32.const 2
                      i32.or
                      i32.store offset=4
                      local.get 5
                      local.get 6
                      i32.add
                      local.tee 3
                      local.get 15
                      i32.const 3
                      i32.or
                      i32.store offset=4
                      local.get 5
                      local.get 14
                      i32.add
                      local.tee 4
                      local.get 4
                      i32.load offset=4
                      i32.const 1
                      i32.or
                      i32.store offset=4
                      local.get 3
                      local.get 15
                      call 63
                    end
                    local.get 5
                    local.set 3
                  end
                  local.get 3
                end
                local.set 3
                i32.const 5916
                i32.load8_u
                i32.const 2
                i32.and
                if  ;; label = @7
                  i32.const 5920
                  call 16
                  drop
                end
                local.get 3
                i32.const 8
                i32.add
                local.get 3
                br_if 1 (;@5;)
                drop
                i32.const 0
                local.get 9
                call 23
                local.tee 5
                i32.eqz
                br_if 1 (;@5;)
                drop
                i32.const -4
                i32.const -8
                local.get 13
                i32.const 4
                i32.sub
                i32.load
                local.tee 3
                i32.const 3
                i32.and
                select
                local.get 3
                i32.const -8
                i32.and
                i32.add
                local.tee 3
                local.get 9
                local.get 3
                local.get 9
                i32.lt_u
                select
                local.tee 3
                if (result i32)  ;; label = @7
                  local.get 5
                  local.get 13
                  local.get 3
                  memory.copy
                  i32.const 0
                else
                  local.get 5
                end
                drop
                local.get 13
                call 18
              end
              local.get 5
            end
            local.tee 3
            i32.eqz
            br_if 2 (;@2;)
            local.get 0
            local.get 16
            i32.store offset=32
            local.get 0
            local.get 3
            i32.store offset=24
          end
          local.get 1
          call 74
          local.tee 3
          i32.eqz
          br_if 1 (;@2;)
          local.get 0
          local.get 0
          i32.load offset=28
          local.tee 1
          i32.const 1
          i32.add
          i32.store offset=28
          local.get 0
          i32.load offset=24
          local.get 1
          i32.const 2
          i32.shl
          i32.add
          local.get 3
          i32.store
        end
        local.get 3
        br 1 (;@1;)
      end
      i32.const 0
    end
    local.set 1
    local.get 0
    call 16
    drop
    local.get 1
    if (result i32)  ;; label = @1
      local.get 11
      local.get 2
      i32.load offset=8
      i32.store offset=8
      local.get 11
      local.get 2
      i64.load align=4
      i64.store
      global.get 0
      i32.const 48
      i32.sub
      local.tee 2
      global.set 0
      block  ;; label = @2
        block (result i32)  ;; label = @3
          local.get 1
          local.tee 0
          i32.load offset=28
          local.tee 3
          i32.atomic.load offset=124
          local.set 1
          loop  ;; label = @4
            i32.const 0
            local.get 1
            i32.eqz
            br_if 1 (;@3;)
            drop
            local.get 1
            local.get 3
            local.get 1
            local.get 1
            i32.const 1
            i32.add
            i32.atomic.rmw.cmpxchg offset=124
            local.tee 1
            i32.ne
            br_if 0 (;@4;)
          end
          i32.const 1
        end
        i32.eqz
        if  ;; label = @3
          i32.const 0
          local.set 3
          br 1 (;@2;)
        end
        local.get 0
        i32.const 4
        i32.add
        local.tee 1
        call 17
        drop
        local.get 2
        local.get 11
        i32.load offset=8
        i32.store offset=32
        local.get 2
        local.get 11
        i64.load align=4
        i64.store offset=24
        local.get 0
        local.get 2
        i32.const 24
        i32.add
        call 91
        local.set 3
        local.get 1
        call 16
        drop
        block (result i32)  ;; label = @3
          local.get 3
          if (result i32)  ;; label = @4
            local.get 0
            i32.const 2
            i32.atomic.rmw.xchg
            local.set 5
            i32.const 1
            local.set 3
            local.get 0
            i32.load offset=28
            local.tee 1
            local.get 5
            i32.const 2
            i32.eq
            br_if 1 (;@3;)
            drop
            local.get 2
            local.get 0
            i32.store offset=44
            local.get 2
            local.get 0
            i32.store offset=16
            local.get 2
            i32.const 4
            i32.store offset=40
            local.get 2
            i32.const 5
            i32.store offset=36
            local.get 2
            local.get 2
            i64.load offset=36 align=4
            i64.store offset=8
            global.get 0
            i32.const 16
            i32.sub
            local.tee 3
            global.set 0
            local.get 1
            i32.load offset=120
            i32.const 4
            i32.add
            call 17
            drop
            local.get 1
            i32.load offset=120
            local.get 3
            local.get 2
            i32.load offset=16
            i32.store offset=8
            local.get 3
            local.get 2
            i64.load offset=8 align=4
            i64.store
            local.get 3
            call 91
            drop
            local.get 1
            i32.load offset=120
            i32.const 4
            i32.add
            call 16
            drop
            block  ;; label = @5
              local.get 1
              i32.load offset=120
              i32.const 2
              i32.atomic.rmw.xchg
              i32.const 2
              i32.eq
              br_if 0 (;@5;)
              local.get 1
              i32.atomic.load offset=128
              if  ;; label = @6
                local.get 1
                i32.const -1
                memory.atomic.notify
                drop
                br 1 (;@5;)
              end
              local.get 1
              global.get 3
              call 14
            end
            local.get 3
            i32.const 16
            i32.add
            global.set 0
            i32.const 1
          else
            i32.const 0
          end
          local.set 3
          local.get 0
          i32.load offset=28
        end
        local.tee 0
        i32.const 1
        i32.atomic.rmw.sub offset=124
        i32.const 1
        i32.eq
        if  ;; label = @3
          local.get 0
          i32.const 124
          i32.add
          i32.const 2147483647
          call 21
        end
      end
      local.get 2
      i32.const 48
      i32.add
      global.set 0
      local.get 3
    else
      i32.const 0
    end
    local.get 11
    i32.const 16
    i32.add
    global.set 0)
  (func (;35;) (type 0) (param i32)
    local.get 0
    i32.const 0
    i32.atomic.rmw.xchg
    i32.const 2
    i32.eq
    if  ;; label = @1
      local.get 0
      i32.const 1
      call 21
    end)
  (func (;36;) (type 0) (param i32)
    local.get 0
    i32.const 0
    i32.const 1
    i32.atomic.rmw.cmpxchg
    if  ;; label = @1
      local.get 0
      i32.const 1
      i32.const 2
      i32.atomic.rmw.cmpxchg
      drop
      loop  ;; label = @2
        local.get 0
        i32.const 0
        i32.const 2
        call 25
        local.get 0
        i32.const 0
        i32.const 2
        i32.atomic.rmw.cmpxchg
        br_if 0 (;@2;)
      end
    end)
  (func (;37;) (type 4) (param i32 i32) (result i32)
    (local i32 i32 i32 f64 f64 f64)
    global.get 0
    i32.const 16
    i32.sub
    local.tee 4
    global.set 0
    block  ;; label = @1
      block (result i32)  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            global.get 5
            local.tee 2
            br_if 0 (;@4;)
            global.get 3
            local.tee 3
            i32.load8_u offset=40
            i32.const 1
            i32.ne
            br_if 0 (;@4;)
            local.get 3
            i32.load8_u offset=41
            i32.eqz
            br_if 1 (;@3;)
          end
          f64.const 0x1p+0 (;=1;)
          f64.const 0x1.9p+6 (;=100;)
          local.get 2
          select
          local.set 5
          call 0
          f64.const inf (;=inf;)
          f64.add
          local.set 7
          global.get 3
          local.set 2
          loop  ;; label = @4
            block  ;; label = @5
              local.get 2
              i32.load offset=36
              i32.eqz
              if  ;; label = @6
                local.get 7
                call 0
                f64.sub
                local.tee 6
                f64.const 0x0p+0 (;=0;)
                f64.le
                i32.eqz
                br_if 1 (;@5;)
                i32.const 73
                br 4 (;@2;)
              end
              i32.const 11
              local.set 0
              br 4 (;@1;)
            end
            local.get 0
            local.get 1
            local.get 5
            local.get 6
            local.get 5
            local.get 6
            f64.lt
            select
            call 30
            local.tee 3
            i32.const -73
            i32.eq
            br_if 0 (;@4;)
          end
          i32.const 0
          local.get 3
          i32.sub
          br 1 (;@2;)
        end
        i32.const 0
        local.get 0
        local.get 1
        f64.const inf (;=inf;)
        call 30
        i32.sub
      end
      local.tee 0
      i32.const 0
      local.get 0
      i32.const -17
      i32.and
      i32.const 11
      i32.eq
      select
      local.get 0
      local.get 0
      i32.const 73
      i32.ne
      select
      local.tee 0
      i32.const 27
      i32.ne
      br_if 0 (;@1;)
      i32.const 27
      i32.const 0
      i32.const 3048
      i32.load
      select
      local.set 0
    end
    local.get 4
    i32.const 16
    i32.add
    global.set 0
    local.get 0)
  (func (;38;) (type 0) (param i32)
    (local i32 i32)
    global.get 0
    i32.const 16
    i32.sub
    local.tee 1
    global.set 0
    local.get 0
    i32.const 1
    i32.store offset=32
    local.get 0
    i32.const 4
    i32.add
    local.tee 2
    call 17
    drop
    local.get 0
    i32.load offset=44
    local.get 0
    i32.load offset=48
    i32.ne
    if  ;; label = @1
      loop  ;; label = @2
        local.get 1
        i32.const 4
        i32.add
        local.get 0
        call 57
        local.get 2
        call 16
        drop
        local.get 1
        i32.load offset=12
        local.get 1
        i32.load offset=4
        call_indirect (type 0)
        local.get 2
        call 17
        drop
        local.get 0
        i32.load offset=44
        local.get 0
        i32.load offset=48
        i32.ne
        br_if 0 (;@2;)
      end
    end
    local.get 2
    call 16
    drop
    local.get 0
    i32.const 0
    i32.store offset=32
    local.get 1
    i32.const 16
    i32.add
    global.set 0)
  (func (;39;) (type 5) (param i32 i32 i32) (result i32)
    (local i32 i32 i32)
    block  ;; label = @1
      local.get 2
      i32.load offset=16
      local.tee 3
      if (result i32)  ;; label = @2
        local.get 3
      else
        local.get 2
        call 40
        br_if 1 (;@1;)
        local.get 2
        i32.load offset=16
      end
      local.get 2
      i32.load offset=20
      local.tee 4
      i32.sub
      local.get 1
      i32.lt_u
      if  ;; label = @2
        local.get 2
        local.get 0
        local.get 1
        local.get 2
        i32.load offset=36
        call_indirect (type 5)
        return
      end
      block  ;; label = @2
        block  ;; label = @3
          local.get 2
          i32.load offset=80
          i32.const 0
          i32.lt_s
          br_if 0 (;@3;)
          local.get 1
          i32.eqz
          br_if 0 (;@3;)
          local.get 1
          local.set 3
          loop  ;; label = @4
            local.get 0
            local.get 3
            i32.add
            local.tee 5
            i32.const 1
            i32.sub
            i32.load8_u
            i32.const 10
            i32.ne
            if  ;; label = @5
              local.get 3
              i32.const 1
              i32.sub
              local.tee 3
              br_if 1 (;@4;)
              br 2 (;@3;)
            end
          end
          local.get 2
          local.get 0
          local.get 3
          local.get 2
          i32.load offset=36
          call_indirect (type 5)
          local.tee 4
          local.get 3
          i32.lt_u
          br_if 2 (;@1;)
          local.get 1
          local.get 3
          i32.sub
          local.set 1
          local.get 2
          i32.load offset=20
          local.set 4
          br 1 (;@2;)
        end
        local.get 0
        local.set 5
        i32.const 0
        local.set 3
      end
      local.get 1
      if (result i32)  ;; label = @2
        local.get 4
        local.get 5
        local.get 1
        memory.copy
        i32.const 0
      else
        local.get 4
      end
      drop
      local.get 2
      local.get 2
      i32.load offset=20
      local.get 1
      i32.add
      i32.store offset=20
      local.get 1
      local.get 3
      i32.add
      local.set 4
    end
    local.get 4)
  (func (;40;) (type 1) (param i32) (result i32)
    (local i32)
    local.get 0
    local.get 0
    i32.load offset=72
    local.tee 1
    i32.const 1
    i32.sub
    local.get 1
    i32.or
    i32.store offset=72
    local.get 0
    i32.load
    local.tee 1
    i32.const 8
    i32.and
    if  ;; label = @1
      local.get 0
      local.get 1
      i32.const 32
      i32.or
      i32.store
      i32.const -1
      return
    end
    local.get 0
    i64.const 0
    i64.store offset=4 align=4
    local.get 0
    local.get 0
    i32.load offset=44
    local.tee 1
    i32.store offset=28
    local.get 0
    local.get 1
    i32.store offset=20
    local.get 0
    local.get 1
    local.get 0
    i32.load offset=48
    i32.add
    i32.store offset=16
    i32.const 0)
  (func (;41;) (type 2)
    i32.const 2956
    i32.const 0
    i32.atomic.rmw.xchg
    i32.const 1073741824
    i32.and
    if  ;; label = @1
      i32.const 2956
      i32.const 1
      call 21
    end)
  (func (;42;) (type 9) (result i32)
    (local i32 i32 i32 i32)
    block  ;; label = @1
      global.get 3
      i32.load offset=24
      local.tee 1
      i32.const 2956
      i32.load
      i32.const -1073741825
      i32.and
      i32.eq
      br_if 0 (;@1;)
      i32.const 1
      local.set 2
      i32.const 2956
      i32.const 0
      local.get 1
      i32.atomic.rmw.cmpxchg
      i32.eqz
      br_if 0 (;@1;)
      i32.const 2956
      i32.const 0
      local.get 1
      i32.const 1073741824
      i32.or
      local.tee 3
      i32.atomic.rmw.cmpxchg
      local.tee 0
      i32.eqz
      br_if 0 (;@1;)
      loop  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            local.get 0
            i32.const 1073741824
            i32.and
            if  ;; label = @5
              local.get 0
              local.set 1
              br 1 (;@4;)
            end
            local.get 0
            i32.const 2956
            local.get 0
            local.get 0
            i32.const 1073741824
            i32.or
            local.tee 1
            i32.atomic.rmw.cmpxchg
            i32.ne
            br_if 1 (;@3;)
          end
          i32.const 2956
          i32.const 0
          local.get 1
          call 25
        end
        i32.const 2956
        i32.const 0
        local.get 3
        i32.atomic.rmw.cmpxchg
        local.tee 0
        br_if 0 (;@2;)
      end
    end
    local.get 2)
  (func (;43;) (type 2)
    (local i32 i32 i32 i32)
    i32.const 3852
    i32.load
    global.get 3
    i32.load offset=24
    i32.eq
    if  ;; label = @1
      i32.const 3852
      i32.const 0
      i32.store
    end
    loop  ;; label = @1
      i32.const 3844
      i32.load
      local.set 2
      i32.const 3840
      i32.const 3840
      i32.load
      local.tee 0
      local.get 0
      i32.const 1
      i32.sub
      i32.const 0
      local.get 0
      i32.const 2147483647
      i32.and
      local.tee 1
      i32.const 1
      i32.ne
      select
      i32.const 0
      local.get 1
      i32.const 2147483647
      i32.ne
      select
      local.tee 3
      i32.atomic.rmw.cmpxchg
      local.get 0
      i32.ne
      br_if 0 (;@1;)
    end
    block  ;; label = @1
      local.get 3
      br_if 0 (;@1;)
      local.get 2
      i32.eqz
      local.get 0
      i32.const 0
      i32.ge_s
      i32.and
      br_if 0 (;@1;)
      i32.const 3840
      local.get 1
      call 21
    end)
  (func (;44;) (type 9) (result i32)
    (local i32 i32)
    block  ;; label = @1
      block  ;; label = @2
        loop  ;; label = @3
          i32.const 6
          local.set 1
          block  ;; label = @4
            i32.const 3840
            i32.load
            local.tee 0
            i32.const 2147483647
            i32.and
            i32.const 2147483646
            i32.sub
            br_table 3 (;@1;) 2 (;@2;) 0 (;@4;)
          end
          local.get 0
          i32.const 3840
          local.get 0
          local.get 0
          i32.const 1
          i32.add
          i32.atomic.rmw.cmpxchg
          i32.ne
          br_if 0 (;@3;)
        end
        i32.const 0
        return
      end
      i32.const 10
      local.set 1
    end
    local.get 1)
  (func (;45;) (type 0) (param i32))
  (func (;46;) (type 2)
    (local i32)
    i32.const 3308
    i32.load
    local.tee 0
    if  ;; label = @1
      i32.const 3308
      local.get 0
      i32.const 1
      i32.sub
      i32.store
      return
    end
    i32.const 3304
    i32.const 0
    i32.atomic.store
    i32.const 3312
    i32.load
    if  ;; label = @1
      i32.const 3304
      i32.const 1
      call 21
    end)
  (func (;47;) (type 2)
    (local i32 i32)
    global.get 3
    i32.load offset=24
    local.tee 0
    i32.const 3304
    i32.load
    i32.ne
    if  ;; label = @1
      i32.const 3304
      i32.const 0
      local.get 0
      i32.atomic.rmw.cmpxchg
      local.tee 1
      if  ;; label = @2
        loop  ;; label = @3
          i32.const 3304
          i32.const 3312
          local.get 1
          call 25
          i32.const 3304
          i32.const 0
          local.get 0
          i32.atomic.rmw.cmpxchg
          local.tee 1
          br_if 0 (;@3;)
        end
      end
      return
    end
    i32.const 3308
    i32.const 3308
    i32.load
    i32.const 1
    i32.add
    i32.store)
  (func (;48;) (type 4) (param i32 i32) (result i32)
    (local i32 i32 i32)
    global.get 0
    i32.const 16
    i32.sub
    local.tee 2
    global.set 0
    global.get 3
    local.set 3
    local.get 2
    i32.const 12
    i32.add
    local.tee 4
    if  ;; label = @1
      local.get 4
      local.get 3
      i32.load8_u offset=40
      i32.store
    end
    local.get 3
    i32.const 1
    i32.store8 offset=40
    local.get 0
    local.get 1
    call 37
    local.get 2
    i32.load offset=12
    local.tee 1
    i32.const 2
    i32.le_u
    if (result i32)  ;; label = @1
      global.get 3
      local.get 1
      i32.store8 offset=40
      i32.const 0
    else
      i32.const 28
    end
    drop
    local.get 2
    i32.const 16
    i32.add
    global.set 0)
  (func (;49;) (type 1) (param i32) (result i32)
    local.get 0
    i32.const 80
    i32.add
    call 23
    i32.const 80
    i32.add)
  (func (;50;) (type 0) (param i32)
    (local i32)
    global.get 0
    i32.const 16
    i32.sub
    local.tee 1
    global.set 0
    i32.const 6004
    call 16
    if  ;; label = @1
      local.get 1
      local.get 0
      i32.load
      i32.store
      call 22
      unreachable
    end
    local.get 1
    i32.const 16
    i32.add
    global.set 0)
  (func (;51;) (type 4) (param i32 i32) (result i32)
    (local i32)
    global.get 0
    i32.const 16
    i32.sub
    local.tee 2
    global.set 0
    local.get 0
    local.get 1
    i32.store
    i32.const 6004
    call 17
    if  ;; label = @1
      local.get 2
      local.get 0
      i32.load
      i32.store
      call 22
      unreachable
    end
    local.get 2
    i32.const 16
    i32.add
    global.set 0
    local.get 0)
  (func (;52;) (type 1) (param i32) (result i32)
    (local i32 i32 i32 i32 i32 i32)
    local.get 0
    i32.load
    local.tee 6
    if  ;; label = @1
      global.get 0
      i32.const 16
      i32.sub
      local.tee 3
      global.set 0
      local.get 6
      i32.const 12
      i32.add
      local.tee 4
      i32.load
      local.set 1
      global.get 0
      i32.const 16
      i32.sub
      local.tee 2
      global.set 0
      local.get 2
      local.get 1
      i32.store offset=12
      local.get 2
      i32.load offset=12
      local.set 1
      local.get 2
      i32.const 16
      i32.add
      global.set 0
      local.get 3
      local.get 1
      i32.store offset=12
      local.get 6
      i32.load offset=16
      local.set 1
      global.get 0
      i32.const 16
      i32.sub
      local.tee 2
      global.set 0
      local.get 2
      local.get 1
      i32.store offset=12
      local.get 2
      i32.load offset=12
      local.set 1
      local.get 2
      i32.const 16
      i32.add
      global.set 0
      local.get 3
      local.get 1
      i32.store offset=8
      loop  ;; label = @2
        local.get 3
        i32.load offset=12
        local.get 3
        i32.load offset=8
        i32.eq
        if  ;; label = @3
          block  ;; label = @4
            local.get 6
            i32.load
            local.set 1
            global.get 0
            i32.const 16
            i32.sub
            local.tee 2
            global.set 0
            local.get 2
            local.get 1
            i32.store offset=12
            local.get 2
            i32.load offset=12
            local.set 1
            local.get 2
            i32.const 16
            i32.add
            global.set 0
            local.get 3
            local.get 1
            i32.store offset=12
            local.get 6
            i32.load offset=4
            local.set 1
            global.get 0
            i32.const 16
            i32.sub
            local.tee 2
            global.set 0
            local.get 2
            local.get 1
            i32.store offset=12
            local.get 2
            i32.load offset=12
            local.set 1
            local.get 2
            i32.const 16
            i32.add
            global.set 0
            local.get 3
            local.get 1
            i32.store offset=8
            loop  ;; label = @5
              local.get 3
              i32.load offset=12
              local.tee 1
              local.get 3
              i32.load offset=8
              i32.eq
              br_if 1 (;@4;)
              local.get 1
              i32.load
              local.set 2
              global.get 0
              i32.const 16
              i32.sub
              local.tee 5
              global.set 0
              local.get 5
              i32.const 1
              i32.store8 offset=12
              local.get 5
              local.get 2
              i32.const 12
              i32.add
              local.tee 1
              i32.store offset=8
              local.get 1
              call 17
              if  ;; label = @6
                call 22
                unreachable
              end
              local.get 2
              local.get 2
              i32.load offset=84
              i32.const 4
              i32.or
              i32.store offset=84
              local.get 2
              i32.const 36
              i32.add
              call 59
              local.get 5
              i32.load8_u offset=12
              i32.const 1
              i32.eq
              if  ;; label = @6
                local.get 5
                i32.load offset=8
                call 58
              end
              local.get 5
              i32.const 16
              i32.add
              global.set 0
              local.get 3
              i32.load offset=12
              i32.load
              local.tee 1
              i32.const 4
              i32.add
              i32.const -1
              i32.atomic.rmw.add
              i32.eqz
              if  ;; label = @6
                local.get 1
                local.get 1
                i32.load
                i32.load offset=8
                call_indirect (type 0)
              end
              local.get 3
              local.get 3
              i32.load offset=12
              i32.const 4
              i32.add
              i32.store offset=12
              br 0 (;@5;)
            end
            unreachable
          end
        else
          local.get 3
          i32.load offset=12
          i32.load
          call 59
          local.get 3
          i32.load offset=12
          i32.load offset=4
          call 58
          local.get 3
          local.get 3
          i32.load offset=12
          i32.const 8
          i32.add
          i32.store offset=12
          br 1 (;@2;)
        end
      end
      global.get 0
      i32.const 16
      i32.sub
      local.tee 5
      global.set 0
      local.get 5
      local.get 4
      i32.store offset=12
      local.get 5
      i32.load offset=12
      local.tee 2
      i32.load
      if  ;; label = @2
        local.get 2
        i32.load
        local.set 1
        local.get 2
        i32.load offset=4
        local.set 4
        loop  ;; label = @3
          local.get 1
          local.get 4
          i32.ne
          if  ;; label = @4
            local.get 4
            i32.const 8
            i32.sub
            local.set 4
            br 1 (;@3;)
          end
        end
        local.get 2
        local.get 1
        i32.store offset=4
        local.get 5
        i32.load offset=12
        local.tee 4
        i32.load
        local.get 4
        i32.load offset=8
        drop
        local.get 4
        i32.load
        drop
        call 18
      end
      local.get 5
      i32.const 16
      i32.add
      global.set 0
      global.get 0
      i32.const 16
      i32.sub
      local.tee 5
      global.set 0
      local.get 5
      local.get 6
      i32.store offset=12
      local.get 5
      i32.load offset=12
      local.tee 2
      i32.load
      if  ;; label = @2
        local.get 2
        i32.load
        local.set 1
        local.get 2
        i32.load offset=4
        local.set 4
        loop  ;; label = @3
          local.get 1
          local.get 4
          i32.ne
          if  ;; label = @4
            local.get 4
            i32.const 4
            i32.sub
            local.set 4
            br 1 (;@3;)
          end
        end
        local.get 2
        local.get 1
        i32.store offset=4
        local.get 5
        i32.load offset=12
        local.tee 4
        i32.load
        local.get 4
        i32.load offset=8
        drop
        local.get 4
        i32.load
        drop
        call 18
      end
      local.get 5
      i32.const 16
      i32.add
      global.set 0
      local.get 3
      i32.const 16
      i32.add
      global.set 0
    end
    local.get 6
    call 18
    local.get 0)
  (func (;53;) (type 1) (param i32) (result i32)
    (local i32)
    global.get 0
    i32.const 16
    i32.sub
    local.tee 1
    global.set 0
    local.get 0
    i64.const 0
    i64.store align=4
    local.get 1
    i32.const 0
    i32.store offset=12
    local.get 0
    i32.const 8
    i32.add
    i32.const 0
    i32.store
    local.get 1
    i32.const 16
    i32.add
    global.set 0
    local.get 0)
  (func (;54;) (type 1) (param i32) (result i32)
    (local i32)
    i32.const 24
    call 26
    call 53
    local.tee 1
    i32.const 12
    i32.add
    call 53
    drop
    local.get 0
    local.get 1
    i32.store
    local.get 0)
  (func (;55;) (type 1) (param i32) (result i32)
    local.get 0)
  (func (;56;) (type 1) (param i32) (result i32)
    local.get 0
    i32.load
    if  ;; label = @1
      i32.const 3032
      i32.atomic.load
      call_indirect (type 2)
      call 22
      unreachable
    end
    local.get 0)
  (func (;57;) (type 3) (param i32 i32)
    (local i32 i32)
    local.get 0
    local.get 1
    i32.load offset=36
    local.get 1
    i32.load offset=44
    local.tee 2
    i32.const 12
    i32.mul
    i32.add
    local.tee 3
    i64.load align=4
    i64.store align=4
    local.get 0
    local.get 3
    i32.load offset=8
    i32.store offset=8
    local.get 1
    local.get 2
    i32.const 1
    i32.add
    local.get 1
    i32.load offset=40
    i32.rem_s
    i32.store offset=44)
  (func (;58;) (type 0) (param i32)
    local.get 0
    call 16
    drop)
  (func (;59;) (type 0) (param i32)
    local.get 0
    call 60
    drop)
  (func (;60;) (type 1) (param i32) (result i32)
    local.get 0
    i32.load
    i32.eqz
    if  ;; label = @1
      local.get 0
      i32.const -1
      call 87
      return
    end
    local.get 0
    i32.load offset=12
    if  ;; label = @1
      local.get 0
      i32.const 8
      i32.add
      local.tee 0
      i32.const 1
      i32.atomic.rmw.add
      drop
      local.get 0
      i32.const 2147483647
      call 21
    end
    i32.const 0)
  (func (;61;) (type 18) (result i64)
    (local i32 i32 i32 i32 i32 i32 i64 i64)
    global.get 0
    i32.const 48
    i32.sub
    local.tee 1
    global.set 0
    global.get 0
    i32.const 32
    i32.sub
    local.tee 0
    global.set 0
    i32.const 1
    i64.const 1
    local.get 0
    i32.const 24
    i32.add
    call 11
    local.tee 2
    if (result i32)  ;; label = @1
      global.get 1
      local.get 2
      i32.store
      i32.const -1
    else
      i32.const 0
    end
    if (result i32)  ;; label = @1
      i32.const -1
    else
      local.get 0
      i64.load offset=24
      local.set 6
      local.get 0
      i32.const 0
      i32.store offset=20
      local.get 0
      local.get 6
      i64.const 1000000000
      i64.div_u
      local.tee 7
      i64.store offset=8
      local.get 0
      local.get 6
      local.get 7
      i64.const 1000000000
      i64.mul
      i64.sub
      i64.store32 offset=16
      local.get 1
      local.get 0
      i64.load offset=16
      i64.store offset=32
      local.get 1
      local.get 0
      i64.load offset=8
      i64.store offset=24
      i32.const 0
    end
    local.get 0
    i32.const 32
    i32.add
    global.set 0
    if  ;; label = @1
      global.get 1
      i32.load
      drop
      call 22
      unreachable
    end
    local.get 1
    i32.const 8
    i32.add
    local.tee 4
    local.get 1
    i64.load offset=24
    i64.store
    local.get 1
    local.get 1
    i64.load32_s offset=32
    i64.store
    global.get 0
    i32.const 32
    i32.sub
    local.tee 0
    global.set 0
    global.get 0
    i32.const 16
    i32.sub
    local.tee 3
    global.set 0
    global.get 0
    i32.const 16
    i32.sub
    local.tee 5
    global.set 0
    global.get 0
    i32.const 16
    i32.sub
    local.tee 2
    global.set 0
    local.get 2
    local.get 4
    i64.load
    i64.const 1000000000
    i64.mul
    i64.store
    local.get 2
    local.get 2
    i64.load
    i64.store offset=8
    local.get 2
    i64.load offset=8
    local.set 6
    local.get 2
    i32.const 16
    i32.add
    global.set 0
    local.get 5
    i32.const 16
    i32.add
    global.set 0
    local.get 3
    local.get 6
    i64.store offset=8
    local.get 0
    local.get 3
    i64.load offset=8
    i64.store offset=8
    local.get 3
    i32.const 16
    i32.add
    global.set 0
    local.get 0
    i64.load offset=8
    local.set 6
    local.get 0
    local.get 1
    i64.load
    i64.store
    local.get 0
    local.get 6
    local.get 0
    i64.load
    i64.add
    i64.store offset=16
    local.get 0
    local.get 0
    i64.load offset=16
    i64.store offset=24
    local.get 0
    i64.load offset=24
    local.set 6
    local.get 0
    i32.const 32
    i32.add
    global.set 0
    local.get 1
    local.get 6
    i64.store offset=16
    local.get 1
    local.get 1
    i64.load offset=16
    i64.store offset=40
    local.get 1
    i64.load offset=40
    local.get 1
    i32.const 48
    i32.add
    global.set 0)
  (func (;62;) (type 2)
    call 12
    unreachable)
  (func (;63;) (type 3) (param i32 i32)
    (local i32 i32 i32 i32 i32 i32 i32)
    local.get 0
    local.get 1
    i32.add
    local.set 5
    block  ;; label = @1
      block  ;; label = @2
        local.get 0
        i32.load offset=4
        local.tee 2
        i32.const 1
        i32.and
        br_if 0 (;@2;)
        local.get 2
        i32.const 2
        i32.and
        i32.eqz
        br_if 1 (;@1;)
        local.get 0
        i32.load
        local.tee 2
        local.get 1
        i32.add
        local.set 1
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              local.get 0
              local.get 2
              i32.sub
              local.tee 0
              i32.const 5492
              i32.load
              i32.ne
              if  ;; label = @6
                local.get 0
                i32.load offset=12
                local.set 3
                local.get 2
                i32.const 255
                i32.le_u
                if  ;; label = @7
                  local.get 3
                  local.get 0
                  i32.load offset=8
                  local.tee 4
                  i32.ne
                  br_if 2 (;@5;)
                  i32.const 5472
                  i32.const 5472
                  i32.load
                  i32.const -2
                  local.get 2
                  i32.const 3
                  i32.shr_u
                  i32.rotl
                  i32.and
                  i32.store
                  br 5 (;@2;)
                end
                local.get 0
                i32.load offset=24
                local.set 6
                local.get 0
                local.get 3
                i32.ne
                if  ;; label = @7
                  local.get 0
                  i32.load offset=8
                  local.tee 2
                  local.get 3
                  i32.store offset=12
                  local.get 3
                  local.get 2
                  i32.store offset=8
                  br 4 (;@3;)
                end
                local.get 0
                i32.load offset=20
                local.tee 4
                if (result i32)  ;; label = @7
                  local.get 0
                  i32.const 20
                  i32.add
                else
                  local.get 0
                  i32.load offset=16
                  local.tee 4
                  i32.eqz
                  br_if 3 (;@4;)
                  local.get 0
                  i32.const 16
                  i32.add
                end
                local.set 2
                loop  ;; label = @7
                  local.get 2
                  local.set 7
                  local.get 4
                  local.tee 3
                  i32.const 20
                  i32.add
                  local.set 2
                  local.get 3
                  i32.load offset=20
                  local.tee 4
                  br_if 0 (;@7;)
                  local.get 3
                  i32.const 16
                  i32.add
                  local.set 2
                  local.get 3
                  i32.load offset=16
                  local.tee 4
                  br_if 0 (;@7;)
                end
                local.get 7
                i32.const 0
                i32.store
                br 3 (;@3;)
              end
              local.get 5
              i32.load offset=4
              local.tee 2
              i32.const 3
              i32.and
              i32.const 3
              i32.ne
              br_if 3 (;@2;)
              i32.const 5480
              local.get 1
              i32.store
              local.get 5
              local.get 2
              i32.const -2
              i32.and
              i32.store offset=4
              local.get 0
              local.get 1
              i32.const 1
              i32.or
              i32.store offset=4
              local.get 5
              local.get 1
              i32.store
              return
            end
            local.get 4
            local.get 3
            i32.store offset=12
            local.get 3
            local.get 4
            i32.store offset=8
            br 2 (;@2;)
          end
          i32.const 0
          local.set 3
        end
        local.get 6
        i32.eqz
        br_if 0 (;@2;)
        block  ;; label = @3
          local.get 0
          i32.load offset=28
          local.tee 2
          i32.const 2
          i32.shl
          i32.const 5776
          i32.add
          local.tee 4
          i32.load
          local.get 0
          i32.eq
          if  ;; label = @4
            local.get 4
            local.get 3
            i32.store
            local.get 3
            br_if 1 (;@3;)
            i32.const 5476
            i32.const 5476
            i32.load
            i32.const -2
            local.get 2
            i32.rotl
            i32.and
            i32.store
            br 2 (;@2;)
          end
          block  ;; label = @4
            local.get 0
            local.get 6
            i32.load offset=16
            i32.eq
            if  ;; label = @5
              local.get 6
              local.get 3
              i32.store offset=16
              br 1 (;@4;)
            end
            local.get 6
            local.get 3
            i32.store offset=20
          end
          local.get 3
          i32.eqz
          br_if 1 (;@2;)
        end
        local.get 3
        local.get 6
        i32.store offset=24
        local.get 0
        i32.load offset=16
        local.tee 2
        if  ;; label = @3
          local.get 3
          local.get 2
          i32.store offset=16
          local.get 2
          local.get 3
          i32.store offset=24
        end
        local.get 0
        i32.load offset=20
        local.tee 2
        i32.eqz
        br_if 0 (;@2;)
        local.get 3
        local.get 2
        i32.store offset=20
        local.get 2
        local.get 3
        i32.store offset=24
      end
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              local.get 5
              i32.load offset=4
              local.tee 2
              i32.const 2
              i32.and
              i32.eqz
              if  ;; label = @6
                i32.const 5496
                i32.load
                local.get 5
                i32.eq
                if  ;; label = @7
                  i32.const 5496
                  local.get 0
                  i32.store
                  i32.const 5484
                  i32.const 5484
                  i32.load
                  local.get 1
                  i32.add
                  local.tee 1
                  i32.store
                  local.get 0
                  local.get 1
                  i32.const 1
                  i32.or
                  i32.store offset=4
                  local.get 0
                  i32.const 5492
                  i32.load
                  i32.ne
                  br_if 6 (;@1;)
                  i32.const 5480
                  i32.const 0
                  i32.store
                  i32.const 5492
                  i32.const 0
                  i32.store
                  return
                end
                i32.const 5492
                i32.load
                local.tee 8
                local.get 5
                i32.eq
                if  ;; label = @7
                  i32.const 5492
                  local.get 0
                  i32.store
                  i32.const 5480
                  i32.const 5480
                  i32.load
                  local.get 1
                  i32.add
                  local.tee 1
                  i32.store
                  local.get 0
                  local.get 1
                  i32.const 1
                  i32.or
                  i32.store offset=4
                  local.get 0
                  local.get 1
                  i32.add
                  local.get 1
                  i32.store
                  return
                end
                local.get 2
                i32.const -8
                i32.and
                local.get 1
                i32.add
                local.set 1
                local.get 5
                i32.load offset=12
                local.set 3
                local.get 2
                i32.const 255
                i32.le_u
                if  ;; label = @7
                  local.get 5
                  i32.load offset=8
                  local.tee 4
                  local.get 3
                  i32.eq
                  if  ;; label = @8
                    i32.const 5472
                    i32.const 5472
                    i32.load
                    i32.const -2
                    local.get 2
                    i32.const 3
                    i32.shr_u
                    i32.rotl
                    i32.and
                    i32.store
                    br 5 (;@3;)
                  end
                  local.get 4
                  local.get 3
                  i32.store offset=12
                  local.get 3
                  local.get 4
                  i32.store offset=8
                  br 4 (;@3;)
                end
                local.get 5
                i32.load offset=24
                local.set 6
                local.get 3
                local.get 5
                i32.ne
                if  ;; label = @7
                  local.get 5
                  i32.load offset=8
                  local.tee 2
                  local.get 3
                  i32.store offset=12
                  local.get 3
                  local.get 2
                  i32.store offset=8
                  br 3 (;@4;)
                end
                local.get 5
                i32.load offset=20
                local.tee 4
                if (result i32)  ;; label = @7
                  local.get 5
                  i32.const 20
                  i32.add
                else
                  local.get 5
                  i32.load offset=16
                  local.tee 4
                  i32.eqz
                  br_if 2 (;@5;)
                  local.get 5
                  i32.const 16
                  i32.add
                end
                local.set 2
                loop  ;; label = @7
                  local.get 2
                  local.set 7
                  local.get 4
                  local.tee 3
                  i32.const 20
                  i32.add
                  local.set 2
                  local.get 3
                  i32.load offset=20
                  local.tee 4
                  br_if 0 (;@7;)
                  local.get 3
                  i32.const 16
                  i32.add
                  local.set 2
                  local.get 3
                  i32.load offset=16
                  local.tee 4
                  br_if 0 (;@7;)
                end
                local.get 7
                i32.const 0
                i32.store
                br 2 (;@4;)
              end
              local.get 5
              local.get 2
              i32.const -2
              i32.and
              i32.store offset=4
              local.get 0
              local.get 1
              i32.const 1
              i32.or
              i32.store offset=4
              local.get 0
              local.get 1
              i32.add
              local.get 1
              i32.store
              br 3 (;@2;)
            end
            i32.const 0
            local.set 3
          end
          local.get 6
          i32.eqz
          br_if 0 (;@3;)
          block  ;; label = @4
            local.get 5
            i32.load offset=28
            local.tee 2
            i32.const 2
            i32.shl
            i32.const 5776
            i32.add
            local.tee 4
            i32.load
            local.get 5
            i32.eq
            if  ;; label = @5
              local.get 4
              local.get 3
              i32.store
              local.get 3
              br_if 1 (;@4;)
              i32.const 5476
              i32.const 5476
              i32.load
              i32.const -2
              local.get 2
              i32.rotl
              i32.and
              i32.store
              br 2 (;@3;)
            end
            block  ;; label = @5
              local.get 5
              local.get 6
              i32.load offset=16
              i32.eq
              if  ;; label = @6
                local.get 6
                local.get 3
                i32.store offset=16
                br 1 (;@5;)
              end
              local.get 6
              local.get 3
              i32.store offset=20
            end
            local.get 3
            i32.eqz
            br_if 1 (;@3;)
          end
          local.get 3
          local.get 6
          i32.store offset=24
          local.get 5
          i32.load offset=16
          local.tee 2
          if  ;; label = @4
            local.get 3
            local.get 2
            i32.store offset=16
            local.get 2
            local.get 3
            i32.store offset=24
          end
          local.get 5
          i32.load offset=20
          local.tee 2
          i32.eqz
          br_if 0 (;@3;)
          local.get 3
          local.get 2
          i32.store offset=20
          local.get 2
          local.get 3
          i32.store offset=24
        end
        local.get 0
        local.get 1
        i32.const 1
        i32.or
        i32.store offset=4
        local.get 0
        local.get 1
        i32.add
        local.get 1
        i32.store
        local.get 0
        local.get 8
        i32.ne
        br_if 0 (;@2;)
        i32.const 5480
        local.get 1
        i32.store
        return
      end
      local.get 1
      i32.const 255
      i32.le_u
      if  ;; label = @2
        local.get 1
        i32.const -8
        i32.and
        i32.const 5512
        i32.add
        local.set 2
        block (result i32)  ;; label = @3
          i32.const 5472
          i32.load
          local.tee 3
          i32.const 1
          local.get 1
          i32.const 3
          i32.shr_u
          i32.shl
          local.tee 1
          i32.and
          i32.eqz
          if  ;; label = @4
            i32.const 5472
            local.get 1
            local.get 3
            i32.or
            i32.store
            local.get 2
            br 1 (;@3;)
          end
          local.get 2
          i32.load offset=8
        end
        local.set 1
        local.get 2
        local.get 0
        i32.store offset=8
        local.get 1
        local.get 0
        i32.store offset=12
        local.get 0
        local.get 2
        i32.store offset=12
        local.get 0
        local.get 1
        i32.store offset=8
        return
      end
      i32.const 31
      local.set 3
      local.get 1
      i32.const 16777215
      i32.le_u
      if  ;; label = @2
        local.get 1
        i32.const 38
        local.get 1
        i32.const 8
        i32.shr_u
        i32.clz
        local.tee 2
        i32.sub
        i32.shr_u
        i32.const 1
        i32.and
        local.get 2
        i32.const 1
        i32.shl
        i32.sub
        i32.const 62
        i32.add
        local.set 3
      end
      local.get 0
      local.get 3
      i32.store offset=28
      local.get 0
      i64.const 0
      i64.store offset=16 align=4
      local.get 3
      i32.const 2
      i32.shl
      i32.const 5776
      i32.add
      local.set 2
      block  ;; label = @2
        block  ;; label = @3
          i32.const 5476
          i32.load
          local.tee 4
          i32.const 1
          local.get 3
          i32.shl
          local.tee 7
          i32.and
          i32.eqz
          if  ;; label = @4
            i32.const 5476
            local.get 4
            local.get 7
            i32.or
            i32.store
            local.get 2
            local.get 0
            i32.store
            local.get 0
            local.get 2
            i32.store offset=24
            br 1 (;@3;)
          end
          local.get 1
          i32.const 25
          local.get 3
          i32.const 1
          i32.shr_u
          i32.sub
          i32.const 0
          local.get 3
          i32.const 31
          i32.ne
          select
          i32.shl
          local.set 3
          local.get 2
          i32.load
          local.set 2
          loop  ;; label = @4
            local.get 2
            local.tee 4
            i32.load offset=4
            i32.const -8
            i32.and
            local.get 1
            i32.eq
            br_if 2 (;@2;)
            local.get 3
            i32.const 29
            i32.shr_u
            local.set 2
            local.get 3
            i32.const 1
            i32.shl
            local.set 3
            local.get 4
            local.get 2
            i32.const 4
            i32.and
            i32.add
            local.tee 7
            i32.load offset=16
            local.tee 2
            br_if 0 (;@4;)
          end
          local.get 7
          local.get 0
          i32.store offset=16
          local.get 0
          local.get 4
          i32.store offset=24
        end
        local.get 0
        local.get 0
        i32.store offset=12
        local.get 0
        local.get 0
        i32.store offset=8
        return
      end
      local.get 4
      i32.load offset=8
      local.tee 1
      local.get 0
      i32.store offset=12
      local.get 4
      local.get 0
      i32.store offset=8
      local.get 0
      i32.const 0
      i32.store offset=24
      local.get 0
      local.get 4
      i32.store offset=12
      local.get 0
      local.get 1
      i32.store offset=8
    end)
  (func (;64;) (type 2)
    (local i32 i32 i32)
    global.get 0
    i32.const 16
    i32.sub
    local.tee 1
    global.set 0
    i32.const 5968
    call 17
    drop
    i32.const 5448
    i32.load
    i32.eqz
    if  ;; label = @1
      i32.const 5468
      i32.const 2
      i32.store
      i32.const 5460
      i64.const -1
      i64.store align=4
      i32.const 5452
      i64.const 17592186048512
      i64.store align=4
      i32.const 5916
      i32.const 2
      i32.store
      local.get 1
      i32.const 12
      i32.add
      local.tee 2
      i32.const 0
      i32.store
      global.get 0
      i32.const 32
      i32.sub
      local.tee 0
      i64.const 0
      i64.store offset=24
      local.get 0
      i64.const 0
      i64.store offset=16
      local.get 0
      i64.const 0
      i64.store offset=8
      i32.const 5920
      local.get 0
      i64.load offset=8
      i64.store align=4
      i32.const 5936
      local.get 0
      i64.load offset=24
      i64.store align=4
      i32.const 5928
      local.get 0
      i64.load offset=16
      i64.store align=4
      local.get 2
      if  ;; label = @2
        i32.const 5920
        local.get 2
        i32.load
        i32.store
      end
      i32.const 5448
      local.get 1
      i32.const 8
      i32.add
      i32.const -16
      i32.and
      i32.const 1431655768
      i32.xor
      i32.store
    end
    i32.const 5968
    call 16
    drop
    local.get 1
    i32.const 16
    i32.add
    global.set 0)
  (func (;65;) (type 4) (param i32 i32) (result i32)
    local.get 0
    i32.eqz
    if  ;; label = @1
      i32.const 0
      return
    end
    block (result i32)  ;; label = @1
      block  ;; label = @2
        local.get 0
        if (result i32)  ;; label = @3
          local.get 1
          i32.const 127
          i32.le_u
          br_if 1 (;@2;)
          block  ;; label = @4
            global.get 3
            i32.load offset=96
            i32.load
            i32.eqz
            if  ;; label = @5
              local.get 1
              i32.const -128
              i32.and
              i32.const 57216
              i32.eq
              br_if 3 (;@2;)
              br 1 (;@4;)
            end
            local.get 1
            i32.const 2047
            i32.le_u
            if  ;; label = @5
              local.get 0
              local.get 1
              i32.const 63
              i32.and
              i32.const 128
              i32.or
              i32.store8 offset=1
              local.get 0
              local.get 1
              i32.const 6
              i32.shr_u
              i32.const 192
              i32.or
              i32.store8
              i32.const 2
              br 4 (;@1;)
            end
            local.get 1
            i32.const -8192
            i32.and
            i32.const 57344
            i32.ne
            local.get 1
            i32.const 55296
            i32.ge_u
            i32.and
            i32.eqz
            if  ;; label = @5
              local.get 0
              local.get 1
              i32.const 63
              i32.and
              i32.const 128
              i32.or
              i32.store8 offset=2
              local.get 0
              local.get 1
              i32.const 12
              i32.shr_u
              i32.const 224
              i32.or
              i32.store8
              local.get 0
              local.get 1
              i32.const 6
              i32.shr_u
              i32.const 63
              i32.and
              i32.const 128
              i32.or
              i32.store8 offset=1
              i32.const 3
              br 4 (;@1;)
            end
            local.get 1
            i32.const 65536
            i32.sub
            i32.const 1048575
            i32.le_u
            if  ;; label = @5
              local.get 0
              local.get 1
              i32.const 63
              i32.and
              i32.const 128
              i32.or
              i32.store8 offset=3
              local.get 0
              local.get 1
              i32.const 18
              i32.shr_u
              i32.const 240
              i32.or
              i32.store8
              local.get 0
              local.get 1
              i32.const 6
              i32.shr_u
              i32.const 63
              i32.and
              i32.const 128
              i32.or
              i32.store8 offset=2
              local.get 0
              local.get 1
              i32.const 12
              i32.shr_u
              i32.const 63
              i32.and
              i32.const 128
              i32.or
              i32.store8 offset=1
              i32.const 4
              br 4 (;@1;)
            end
          end
          global.get 1
          i32.const 25
          i32.store
          i32.const -1
        else
          i32.const 1
        end
        br 1 (;@1;)
      end
      local.get 0
      local.get 1
      i32.store8
      i32.const 1
    end)
  (func (;66;) (type 6) (param i32 i32 i32)
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              block  ;; label = @6
                block  ;; label = @7
                  block  ;; label = @8
                    block  ;; label = @9
                      block  ;; label = @10
                        block  ;; label = @11
                          local.get 1
                          i32.const 9
                          i32.sub
                          br_table 0 (;@11;) 8 (;@3;) 9 (;@2;) 10 (;@1;) 8 (;@3;) 9 (;@2;) 1 (;@10;) 2 (;@9;) 3 (;@8;) 4 (;@7;) 10 (;@1;) 9 (;@2;) 10 (;@1;) 10 (;@1;) 8 (;@3;) 9 (;@2;) 5 (;@6;) 6 (;@5;) 7 (;@4;)
                        end
                        local.get 2
                        local.get 2
                        i32.load
                        local.tee 1
                        i32.const 4
                        i32.add
                        i32.store
                        local.get 0
                        local.get 1
                        i32.load
                        i32.store
                        return
                      end
                      local.get 2
                      local.get 2
                      i32.load
                      local.tee 1
                      i32.const 4
                      i32.add
                      i32.store
                      local.get 0
                      local.get 1
                      i64.load16_s
                      i64.store
                      return
                    end
                    local.get 2
                    local.get 2
                    i32.load
                    local.tee 1
                    i32.const 4
                    i32.add
                    i32.store
                    local.get 0
                    local.get 1
                    i64.load16_u
                    i64.store
                    return
                  end
                  local.get 2
                  local.get 2
                  i32.load
                  local.tee 1
                  i32.const 4
                  i32.add
                  i32.store
                  local.get 0
                  local.get 1
                  i64.load8_s
                  i64.store
                  return
                end
                local.get 2
                local.get 2
                i32.load
                local.tee 1
                i32.const 4
                i32.add
                i32.store
                local.get 0
                local.get 1
                i64.load8_u
                i64.store
                return
              end
              local.get 2
              local.get 2
              i32.load
              i32.const 7
              i32.add
              i32.const -8
              i32.and
              local.tee 1
              i32.const 8
              i32.add
              i32.store
              local.get 0
              local.get 1
              f64.load
              f64.store
              return
            end
            unreachable
          end
          return
        end
        local.get 2
        local.get 2
        i32.load
        local.tee 1
        i32.const 4
        i32.add
        i32.store
        local.get 0
        local.get 1
        i64.load32_s
        i64.store
        return
      end
      local.get 2
      local.get 2
      i32.load
      local.tee 1
      i32.const 4
      i32.add
      i32.store
      local.get 0
      local.get 1
      i64.load32_u
      i64.store
      return
    end
    local.get 2
    local.get 2
    i32.load
    i32.const 7
    i32.add
    i32.const -8
    i32.and
    local.tee 1
    i32.const 8
    i32.add
    i32.store
    local.get 0
    local.get 1
    i64.load
    i64.store)
  (func (;67;) (type 1) (param i32) (result i32)
    (local i32 i32 i32 i32 i32)
    local.get 0
    i32.load
    local.tee 3
    i32.load8_s
    i32.const 48
    i32.sub
    local.tee 1
    i32.const 9
    i32.gt_u
    if  ;; label = @1
      i32.const 0
      return
    end
    loop  ;; label = @1
      i32.const -1
      local.set 4
      local.get 2
      i32.const 214748364
      i32.le_u
      if  ;; label = @2
        i32.const -1
        local.get 1
        local.get 2
        i32.const 10
        i32.mul
        local.tee 5
        i32.add
        local.get 1
        local.get 5
        i32.const 2147483647
        i32.xor
        i32.gt_u
        select
        local.set 4
      end
      local.get 0
      local.get 3
      i32.const 1
      i32.add
      local.tee 5
      i32.store
      local.get 3
      i32.load8_s offset=1
      local.get 4
      local.set 2
      local.get 5
      local.set 3
      i32.const 48
      i32.sub
      local.tee 1
      i32.const 10
      i32.lt_u
      br_if 0 (;@1;)
    end
    local.get 2)
  (func (;68;) (type 0) (param i32)
    local.get 0
    i32.const 4
    i32.add
    call 77
    local.get 0
    i32.load offset=36
    call 18
    local.get 0
    call 18)
  (func (;69;) (type 19) (param i32 i32 i32 i32 i32 i32) (result i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i64 i64)
    global.get 0
    i32.const -64
    i32.add
    local.tee 7
    global.set 0
    local.get 7
    local.get 1
    i32.store offset=60
    local.get 7
    i32.const 39
    i32.add
    local.set 22
    local.get 7
    i32.const 40
    i32.add
    local.set 16
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            loop  ;; label = @5
              i32.const 0
              local.set 6
              loop  ;; label = @6
                local.get 1
                local.set 12
                local.get 6
                local.get 13
                i32.const 2147483647
                i32.xor
                i32.gt_s
                br_if 2 (;@4;)
                local.get 6
                local.get 13
                i32.add
                local.set 13
                block  ;; label = @7
                  block  ;; label = @8
                    block  ;; label = @9
                      block  ;; label = @10
                        local.get 1
                        local.tee 6
                        i32.load8_u
                        local.tee 10
                        if  ;; label = @11
                          loop  ;; label = @12
                            block  ;; label = @13
                              block  ;; label = @14
                                local.get 10
                                i32.const 255
                                i32.and
                                local.tee 1
                                i32.eqz
                                if  ;; label = @15
                                  local.get 6
                                  local.set 1
                                  br 1 (;@14;)
                                end
                                local.get 1
                                i32.const 37
                                i32.ne
                                br_if 1 (;@13;)
                                local.get 6
                                local.set 10
                                loop  ;; label = @15
                                  local.get 10
                                  i32.load8_u offset=1
                                  i32.const 37
                                  i32.ne
                                  if  ;; label = @16
                                    local.get 10
                                    local.set 1
                                    br 2 (;@14;)
                                  end
                                  local.get 6
                                  i32.const 1
                                  i32.add
                                  local.set 6
                                  local.get 10
                                  i32.load8_u offset=2
                                  local.get 10
                                  i32.const 2
                                  i32.add
                                  local.tee 1
                                  local.set 10
                                  i32.const 37
                                  i32.eq
                                  br_if 0 (;@15;)
                                end
                              end
                              local.get 6
                              local.get 12
                              i32.sub
                              local.tee 6
                              local.get 13
                              i32.const 2147483647
                              i32.xor
                              local.tee 23
                              i32.gt_s
                              br_if 9 (;@4;)
                              local.get 0
                              if  ;; label = @14
                                local.get 0
                                local.get 12
                                local.get 6
                                call 19
                              end
                              local.get 6
                              br_if 7 (;@6;)
                              local.get 7
                              local.get 1
                              i32.store offset=60
                              local.get 1
                              i32.const 1
                              i32.add
                              local.set 6
                              i32.const -1
                              local.set 15
                              block  ;; label = @14
                                local.get 1
                                i32.load8_s offset=1
                                i32.const 48
                                i32.sub
                                local.tee 8
                                i32.const 9
                                i32.gt_u
                                br_if 0 (;@14;)
                                local.get 1
                                i32.load8_u offset=2
                                i32.const 36
                                i32.ne
                                br_if 0 (;@14;)
                                local.get 1
                                i32.const 3
                                i32.add
                                local.set 6
                                i32.const 1
                                local.set 17
                                local.get 8
                                local.set 15
                              end
                              local.get 7
                              local.get 6
                              i32.store offset=60
                              i32.const 0
                              local.set 11
                              block  ;; label = @14
                                local.get 6
                                i32.load8_s
                                local.tee 10
                                i32.const 32
                                i32.sub
                                local.tee 1
                                i32.const 31
                                i32.gt_u
                                if  ;; label = @15
                                  local.get 6
                                  local.set 8
                                  br 1 (;@14;)
                                end
                                local.get 6
                                local.set 8
                                i32.const 1
                                local.get 1
                                i32.shl
                                local.tee 1
                                i32.const 75913
                                i32.and
                                i32.eqz
                                br_if 0 (;@14;)
                                loop  ;; label = @15
                                  local.get 7
                                  local.get 6
                                  i32.const 1
                                  i32.add
                                  local.tee 8
                                  i32.store offset=60
                                  local.get 1
                                  local.get 11
                                  i32.or
                                  local.set 11
                                  local.get 6
                                  i32.load8_s offset=1
                                  local.tee 10
                                  i32.const 32
                                  i32.sub
                                  local.tee 1
                                  i32.const 32
                                  i32.ge_u
                                  br_if 1 (;@14;)
                                  local.get 8
                                  local.set 6
                                  i32.const 1
                                  local.get 1
                                  i32.shl
                                  local.tee 1
                                  i32.const 75913
                                  i32.and
                                  br_if 0 (;@15;)
                                end
                              end
                              block  ;; label = @14
                                local.get 10
                                i32.const 42
                                i32.eq
                                if  ;; label = @15
                                  block (result i32)  ;; label = @16
                                    block  ;; label = @17
                                      local.get 8
                                      i32.load8_s offset=1
                                      i32.const 48
                                      i32.sub
                                      local.tee 1
                                      i32.const 9
                                      i32.gt_u
                                      br_if 0 (;@17;)
                                      local.get 8
                                      i32.load8_u offset=2
                                      i32.const 36
                                      i32.ne
                                      br_if 0 (;@17;)
                                      block (result i32)  ;; label = @18
                                        local.get 0
                                        i32.eqz
                                        if  ;; label = @19
                                          local.get 4
                                          local.get 1
                                          i32.const 2
                                          i32.shl
                                          i32.add
                                          i32.const 10
                                          i32.store
                                          i32.const 0
                                          br 1 (;@18;)
                                        end
                                        local.get 3
                                        local.get 1
                                        i32.const 3
                                        i32.shl
                                        i32.add
                                        i32.load
                                      end
                                      local.set 14
                                      local.get 8
                                      i32.const 3
                                      i32.add
                                      local.set 1
                                      i32.const 1
                                      br 1 (;@16;)
                                    end
                                    local.get 17
                                    br_if 6 (;@10;)
                                    local.get 8
                                    i32.const 1
                                    i32.add
                                    local.set 1
                                    local.get 0
                                    i32.eqz
                                    if  ;; label = @17
                                      local.get 7
                                      local.get 1
                                      i32.store offset=60
                                      i32.const 0
                                      local.set 17
                                      i32.const 0
                                      local.set 14
                                      br 3 (;@14;)
                                    end
                                    local.get 2
                                    local.get 2
                                    i32.load
                                    local.tee 6
                                    i32.const 4
                                    i32.add
                                    i32.store
                                    local.get 6
                                    i32.load
                                    local.set 14
                                    i32.const 0
                                  end
                                  local.set 17
                                  local.get 7
                                  local.get 1
                                  i32.store offset=60
                                  local.get 14
                                  i32.const 0
                                  i32.ge_s
                                  br_if 1 (;@14;)
                                  i32.const 0
                                  local.get 14
                                  i32.sub
                                  local.set 14
                                  local.get 11
                                  i32.const 8192
                                  i32.or
                                  local.set 11
                                  br 1 (;@14;)
                                end
                                local.get 7
                                i32.const 60
                                i32.add
                                call 67
                                local.tee 14
                                i32.const 0
                                i32.lt_s
                                br_if 10 (;@4;)
                                local.get 7
                                i32.load offset=60
                                local.set 1
                              end
                              i32.const 0
                              local.set 6
                              i32.const -1
                              local.set 9
                              block (result i32)  ;; label = @14
                                i32.const 0
                                local.get 1
                                i32.load8_u
                                i32.const 46
                                i32.ne
                                br_if 0 (;@14;)
                                drop
                                local.get 1
                                i32.load8_u offset=1
                                i32.const 42
                                i32.eq
                                if  ;; label = @15
                                  block (result i32)  ;; label = @16
                                    block  ;; label = @17
                                      local.get 1
                                      i32.load8_s offset=2
                                      i32.const 48
                                      i32.sub
                                      local.tee 8
                                      i32.const 9
                                      i32.gt_u
                                      br_if 0 (;@17;)
                                      local.get 1
                                      i32.load8_u offset=3
                                      i32.const 36
                                      i32.ne
                                      br_if 0 (;@17;)
                                      local.get 1
                                      i32.const 4
                                      i32.add
                                      local.set 1
                                      block (result i32)  ;; label = @18
                                        local.get 0
                                        i32.eqz
                                        if  ;; label = @19
                                          local.get 4
                                          local.get 8
                                          i32.const 2
                                          i32.shl
                                          i32.add
                                          i32.const 10
                                          i32.store
                                          i32.const 0
                                          br 1 (;@18;)
                                        end
                                        local.get 3
                                        local.get 8
                                        i32.const 3
                                        i32.shl
                                        i32.add
                                        i32.load
                                      end
                                      br 1 (;@16;)
                                    end
                                    local.get 17
                                    br_if 6 (;@10;)
                                    local.get 1
                                    i32.const 2
                                    i32.add
                                    local.set 1
                                    i32.const 0
                                    local.get 0
                                    i32.eqz
                                    br_if 0 (;@16;)
                                    drop
                                    local.get 2
                                    local.get 2
                                    i32.load
                                    local.tee 8
                                    i32.const 4
                                    i32.add
                                    i32.store
                                    local.get 8
                                    i32.load
                                  end
                                  local.set 9
                                  local.get 7
                                  local.get 1
                                  i32.store offset=60
                                  local.get 9
                                  i32.const 0
                                  i32.ge_s
                                  br 1 (;@14;)
                                end
                                local.get 7
                                local.get 1
                                i32.const 1
                                i32.add
                                i32.store offset=60
                                local.get 7
                                i32.const 60
                                i32.add
                                call 67
                                local.set 9
                                local.get 7
                                i32.load offset=60
                                local.set 1
                                i32.const 1
                              end
                              local.set 18
                              loop  ;; label = @14
                                local.get 6
                                local.set 19
                                i32.const 28
                                local.set 8
                                local.get 1
                                local.tee 20
                                i32.load8_s
                                local.tee 6
                                i32.const 123
                                i32.sub
                                i32.const -58
                                i32.lt_u
                                br_if 11 (;@3;)
                                local.get 1
                                i32.const 1
                                i32.add
                                local.set 1
                                local.get 6
                                local.get 19
                                i32.const 58
                                i32.mul
                                i32.add
                                i32.const 1759
                                i32.add
                                i32.load8_u
                                local.tee 6
                                i32.const 1
                                i32.sub
                                i32.const 255
                                i32.and
                                i32.const 8
                                i32.lt_u
                                br_if 0 (;@14;)
                              end
                              local.get 7
                              local.get 1
                              i32.store offset=60
                              block  ;; label = @14
                                local.get 6
                                i32.const 27
                                i32.ne
                                if  ;; label = @15
                                  local.get 6
                                  i32.eqz
                                  br_if 12 (;@3;)
                                  local.get 15
                                  i32.const 0
                                  i32.ge_s
                                  if  ;; label = @16
                                    local.get 0
                                    i32.eqz
                                    if  ;; label = @17
                                      local.get 4
                                      local.get 15
                                      i32.const 2
                                      i32.shl
                                      i32.add
                                      local.get 6
                                      i32.store
                                      br 12 (;@5;)
                                    end
                                    local.get 7
                                    local.get 3
                                    local.get 15
                                    i32.const 3
                                    i32.shl
                                    i32.add
                                    i64.load
                                    i64.store offset=48
                                    br 2 (;@14;)
                                  end
                                  local.get 0
                                  i32.eqz
                                  br_if 8 (;@7;)
                                  local.get 7
                                  i32.const 48
                                  i32.add
                                  local.get 6
                                  local.get 2
                                  call 66
                                  br 1 (;@14;)
                                end
                                local.get 15
                                i32.const 0
                                i32.ge_s
                                br_if 11 (;@3;)
                                i32.const 0
                                local.set 6
                                local.get 0
                                i32.eqz
                                br_if 8 (;@6;)
                              end
                              local.get 0
                              i32.load8_u
                              i32.const 32
                              i32.and
                              br_if 11 (;@2;)
                              local.get 11
                              i32.const -65537
                              i32.and
                              local.tee 10
                              local.get 11
                              local.get 11
                              i32.const 8192
                              i32.and
                              select
                              local.set 11
                              i32.const 0
                              local.set 15
                              i32.const 1094
                              local.set 21
                              local.get 16
                              local.set 8
                              block  ;; label = @14
                                block  ;; label = @15
                                  block (result i32)  ;; label = @16
                                    block  ;; label = @17
                                      block  ;; label = @18
                                        block  ;; label = @19
                                          block  ;; label = @20
                                            block  ;; label = @21
                                              block  ;; label = @22
                                                block (result i32)  ;; label = @23
                                                  block  ;; label = @24
                                                    block  ;; label = @25
                                                      block  ;; label = @26
                                                        block  ;; label = @27
                                                          block  ;; label = @28
                                                            block  ;; label = @29
                                                              block  ;; label = @30
                                                                local.get 20
                                                                i32.load8_u
                                                                local.tee 20
                                                                i32.extend8_s
                                                                local.tee 6
                                                                i32.const -45
                                                                i32.and
                                                                local.get 6
                                                                local.get 20
                                                                i32.const 15
                                                                i32.and
                                                                i32.const 3
                                                                i32.eq
                                                                select
                                                                local.get 6
                                                                local.get 19
                                                                select
                                                                local.tee 6
                                                                i32.const 88
                                                                i32.sub
                                                                br_table 4 (;@26;) 22 (;@8;) 22 (;@8;) 22 (;@8;) 22 (;@8;) 22 (;@8;) 22 (;@8;) 22 (;@8;) 22 (;@8;) 16 (;@14;) 22 (;@8;) 9 (;@21;) 6 (;@24;) 16 (;@14;) 16 (;@14;) 16 (;@14;) 22 (;@8;) 6 (;@24;) 22 (;@8;) 22 (;@8;) 22 (;@8;) 22 (;@8;) 2 (;@28;) 5 (;@25;) 3 (;@27;) 22 (;@8;) 22 (;@8;) 10 (;@20;) 22 (;@8;) 1 (;@29;) 22 (;@8;) 22 (;@8;) 4 (;@26;) 0 (;@30;)
                                                              end
                                                              block  ;; label = @30
                                                                local.get 6
                                                                i32.const 65
                                                                i32.sub
                                                                br_table 16 (;@14;) 22 (;@8;) 11 (;@19;) 22 (;@8;) 16 (;@14;) 16 (;@14;) 16 (;@14;) 0 (;@30;)
                                                              end
                                                              local.get 6
                                                              i32.const 83
                                                              i32.eq
                                                              br_if 11 (;@18;)
                                                              br 21 (;@8;)
                                                            end
                                                            local.get 7
                                                            i64.load offset=48
                                                            local.set 24
                                                            i32.const 1094
                                                            br 5 (;@23;)
                                                          end
                                                          i32.const 0
                                                          local.set 6
                                                          block  ;; label = @28
                                                            block  ;; label = @29
                                                              block  ;; label = @30
                                                                block  ;; label = @31
                                                                  block  ;; label = @32
                                                                    block  ;; label = @33
                                                                      block  ;; label = @34
                                                                        local.get 19
                                                                        br_table 0 (;@34;) 1 (;@33;) 2 (;@32;) 3 (;@31;) 4 (;@30;) 28 (;@6;) 5 (;@29;) 6 (;@28;) 28 (;@6;)
                                                                      end
                                                                      local.get 7
                                                                      i32.load offset=48
                                                                      local.get 13
                                                                      i32.store
                                                                      br 27 (;@6;)
                                                                    end
                                                                    local.get 7
                                                                    i32.load offset=48
                                                                    local.get 13
                                                                    i32.store
                                                                    br 26 (;@6;)
                                                                  end
                                                                  local.get 7
                                                                  i32.load offset=48
                                                                  local.get 13
                                                                  i64.extend_i32_s
                                                                  i64.store
                                                                  br 25 (;@6;)
                                                                end
                                                                local.get 7
                                                                i32.load offset=48
                                                                local.get 13
                                                                i32.store16
                                                                br 24 (;@6;)
                                                              end
                                                              local.get 7
                                                              i32.load offset=48
                                                              local.get 13
                                                              i32.store8
                                                              br 23 (;@6;)
                                                            end
                                                            local.get 7
                                                            i32.load offset=48
                                                            local.get 13
                                                            i32.store
                                                            br 22 (;@6;)
                                                          end
                                                          local.get 7
                                                          i32.load offset=48
                                                          local.get 13
                                                          i64.extend_i32_s
                                                          i64.store
                                                          br 21 (;@6;)
                                                        end
                                                        i32.const 8
                                                        local.get 9
                                                        local.get 9
                                                        i32.const 8
                                                        i32.le_u
                                                        select
                                                        local.set 9
                                                        local.get 11
                                                        i32.const 8
                                                        i32.or
                                                        local.set 11
                                                        i32.const 120
                                                        local.set 6
                                                      end
                                                      local.get 16
                                                      local.set 1
                                                      local.get 7
                                                      i64.load offset=48
                                                      local.tee 24
                                                      local.tee 25
                                                      i64.const 0
                                                      i64.ne
                                                      if  ;; label = @26
                                                        local.get 6
                                                        i32.const 32
                                                        i32.and
                                                        local.set 12
                                                        loop  ;; label = @27
                                                          local.get 1
                                                          i32.const 1
                                                          i32.sub
                                                          local.tee 1
                                                          local.get 25
                                                          i32.wrap_i64
                                                          i32.const 15
                                                          i32.and
                                                          i32.const 2288
                                                          i32.add
                                                          i32.load8_u
                                                          local.get 12
                                                          i32.or
                                                          i32.store8
                                                          local.get 25
                                                          i64.const 15
                                                          i64.gt_u
                                                          local.get 25
                                                          i64.const 4
                                                          i64.shr_u
                                                          local.set 25
                                                          br_if 0 (;@27;)
                                                        end
                                                      end
                                                      local.get 1
                                                      local.set 12
                                                      local.get 24
                                                      i64.eqz
                                                      br_if 3 (;@22;)
                                                      local.get 11
                                                      i32.const 8
                                                      i32.and
                                                      i32.eqz
                                                      br_if 3 (;@22;)
                                                      local.get 6
                                                      i32.const 4
                                                      i32.shr_u
                                                      i32.const 1094
                                                      i32.add
                                                      local.set 21
                                                      i32.const 2
                                                      local.set 15
                                                      br 3 (;@22;)
                                                    end
                                                    local.get 16
                                                    local.set 1
                                                    local.get 7
                                                    i64.load offset=48
                                                    local.tee 24
                                                    local.tee 25
                                                    i64.const 0
                                                    i64.ne
                                                    if  ;; label = @25
                                                      loop  ;; label = @26
                                                        local.get 1
                                                        i32.const 1
                                                        i32.sub
                                                        local.tee 1
                                                        local.get 25
                                                        i32.wrap_i64
                                                        i32.const 7
                                                        i32.and
                                                        i32.const 48
                                                        i32.or
                                                        i32.store8
                                                        local.get 25
                                                        i64.const 7
                                                        i64.gt_u
                                                        local.get 25
                                                        i64.const 3
                                                        i64.shr_u
                                                        local.set 25
                                                        br_if 0 (;@26;)
                                                      end
                                                    end
                                                    local.get 1
                                                    local.set 12
                                                    local.get 11
                                                    i32.const 8
                                                    i32.and
                                                    i32.eqz
                                                    br_if 2 (;@22;)
                                                    local.get 9
                                                    local.get 16
                                                    local.get 1
                                                    i32.sub
                                                    local.tee 1
                                                    i32.const 1
                                                    i32.add
                                                    local.get 1
                                                    local.get 9
                                                    i32.lt_s
                                                    select
                                                    local.set 9
                                                    br 2 (;@22;)
                                                  end
                                                  local.get 7
                                                  i64.load offset=48
                                                  local.tee 24
                                                  i64.const 0
                                                  i64.lt_s
                                                  if  ;; label = @24
                                                    local.get 7
                                                    i64.const 0
                                                    local.get 24
                                                    i64.sub
                                                    local.tee 24
                                                    i64.store offset=48
                                                    i32.const 1
                                                    local.set 15
                                                    i32.const 1094
                                                    br 1 (;@23;)
                                                  end
                                                  local.get 11
                                                  i32.const 2048
                                                  i32.and
                                                  if  ;; label = @24
                                                    i32.const 1
                                                    local.set 15
                                                    i32.const 1095
                                                    br 1 (;@23;)
                                                  end
                                                  i32.const 1096
                                                  i32.const 1094
                                                  local.get 11
                                                  i32.const 1
                                                  i32.and
                                                  local.tee 15
                                                  select
                                                end
                                                local.set 21
                                                local.get 24
                                                local.get 16
                                                call 28
                                                local.set 12
                                              end
                                              local.get 18
                                              local.get 9
                                              i32.const 0
                                              i32.lt_s
                                              i32.and
                                              br_if 17 (;@4;)
                                              local.get 11
                                              i32.const -65537
                                              i32.and
                                              local.get 11
                                              local.get 18
                                              select
                                              local.set 11
                                              block  ;; label = @22
                                                local.get 24
                                                i64.const 0
                                                i64.ne
                                                br_if 0 (;@22;)
                                                local.get 9
                                                br_if 0 (;@22;)
                                                local.get 16
                                                local.set 12
                                                i32.const 0
                                                local.set 9
                                                br 14 (;@8;)
                                              end
                                              local.get 9
                                              local.get 24
                                              i64.eqz
                                              local.get 16
                                              local.get 12
                                              i32.sub
                                              i32.add
                                              local.tee 1
                                              local.get 1
                                              local.get 9
                                              i32.lt_s
                                              select
                                              local.set 9
                                              br 13 (;@8;)
                                            end
                                            local.get 7
                                            i32.load8_u offset=48
                                            local.set 6
                                            br 11 (;@9;)
                                          end
                                          block (result i32)  ;; label = @20
                                            i32.const 2147483647
                                            local.get 9
                                            local.get 9
                                            i32.const 2147483647
                                            i32.ge_u
                                            select
                                            local.tee 11
                                            local.tee 6
                                            i32.const 0
                                            i32.ne
                                            local.set 8
                                            block  ;; label = @21
                                              block  ;; label = @22
                                                block  ;; label = @23
                                                  local.get 7
                                                  i32.load offset=48
                                                  local.tee 1
                                                  i32.const 1731
                                                  local.get 1
                                                  select
                                                  local.tee 12
                                                  local.tee 1
                                                  i32.const 3
                                                  i32.and
                                                  i32.eqz
                                                  br_if 0 (;@23;)
                                                  local.get 6
                                                  i32.eqz
                                                  br_if 0 (;@23;)
                                                  loop  ;; label = @24
                                                    local.get 1
                                                    i32.load8_u
                                                    i32.eqz
                                                    br_if 2 (;@22;)
                                                    local.get 6
                                                    i32.const 1
                                                    i32.sub
                                                    local.tee 6
                                                    i32.const 0
                                                    i32.ne
                                                    local.set 8
                                                    local.get 1
                                                    i32.const 1
                                                    i32.add
                                                    local.tee 1
                                                    i32.const 3
                                                    i32.and
                                                    i32.eqz
                                                    br_if 1 (;@23;)
                                                    local.get 6
                                                    br_if 0 (;@24;)
                                                  end
                                                end
                                                local.get 8
                                                i32.eqz
                                                br_if 1 (;@21;)
                                                block  ;; label = @23
                                                  local.get 1
                                                  i32.load8_u
                                                  i32.eqz
                                                  br_if 0 (;@23;)
                                                  local.get 6
                                                  i32.const 4
                                                  i32.lt_u
                                                  br_if 0 (;@23;)
                                                  loop  ;; label = @24
                                                    i32.const 16843008
                                                    local.get 1
                                                    i32.load
                                                    local.tee 8
                                                    i32.sub
                                                    local.get 8
                                                    i32.or
                                                    i32.const -2139062144
                                                    i32.and
                                                    i32.const -2139062144
                                                    i32.ne
                                                    br_if 2 (;@22;)
                                                    local.get 1
                                                    i32.const 4
                                                    i32.add
                                                    local.set 1
                                                    local.get 6
                                                    i32.const 4
                                                    i32.sub
                                                    local.tee 6
                                                    i32.const 3
                                                    i32.gt_u
                                                    br_if 0 (;@24;)
                                                  end
                                                end
                                                local.get 6
                                                i32.eqz
                                                br_if 1 (;@21;)
                                              end
                                              loop  ;; label = @22
                                                local.get 1
                                                local.get 1
                                                i32.load8_u
                                                i32.eqz
                                                br_if 2 (;@20;)
                                                drop
                                                local.get 1
                                                i32.const 1
                                                i32.add
                                                local.set 1
                                                local.get 6
                                                i32.const 1
                                                i32.sub
                                                local.tee 6
                                                br_if 0 (;@22;)
                                              end
                                            end
                                            i32.const 0
                                          end
                                          local.tee 1
                                          local.get 12
                                          i32.sub
                                          local.get 11
                                          local.get 1
                                          select
                                          local.tee 1
                                          local.get 12
                                          i32.add
                                          local.set 8
                                          local.get 9
                                          i32.const 0
                                          i32.ge_s
                                          if  ;; label = @20
                                            local.get 10
                                            local.set 11
                                            local.get 1
                                            local.set 9
                                            br 12 (;@8;)
                                          end
                                          local.get 10
                                          local.set 11
                                          local.get 1
                                          local.set 9
                                          local.get 8
                                          i32.load8_u
                                          br_if 15 (;@4;)
                                          br 11 (;@8;)
                                        end
                                        local.get 7
                                        i64.load offset=48
                                        local.tee 24
                                        i64.const 0
                                        i64.ne
                                        br_if 1 (;@17;)
                                        i32.const 0
                                        local.set 6
                                        br 9 (;@9;)
                                      end
                                      local.get 9
                                      if  ;; label = @18
                                        local.get 7
                                        i32.load offset=48
                                        br 2 (;@16;)
                                      end
                                      i32.const 0
                                      local.set 6
                                      local.get 0
                                      i32.const 32
                                      local.get 14
                                      i32.const 0
                                      local.get 11
                                      call 20
                                      br 2 (;@15;)
                                    end
                                    local.get 7
                                    i32.const 0
                                    i32.store offset=12
                                    local.get 7
                                    local.get 24
                                    i64.store32 offset=8
                                    local.get 7
                                    local.get 7
                                    i32.const 8
                                    i32.add
                                    local.tee 6
                                    i32.store offset=48
                                    i32.const -1
                                    local.set 9
                                    local.get 6
                                  end
                                  local.set 10
                                  i32.const 0
                                  local.set 6
                                  loop  ;; label = @16
                                    block  ;; label = @17
                                      local.get 10
                                      i32.load
                                      local.tee 12
                                      i32.eqz
                                      br_if 0 (;@17;)
                                      local.get 7
                                      i32.const 4
                                      i32.add
                                      local.get 12
                                      call 65
                                      local.tee 12
                                      i32.const 0
                                      i32.lt_s
                                      br_if 15 (;@2;)
                                      local.get 12
                                      local.get 9
                                      local.get 6
                                      i32.sub
                                      i32.gt_u
                                      br_if 0 (;@17;)
                                      local.get 10
                                      i32.const 4
                                      i32.add
                                      local.set 10
                                      local.get 6
                                      local.get 12
                                      i32.add
                                      local.tee 6
                                      local.get 9
                                      i32.lt_u
                                      br_if 1 (;@16;)
                                    end
                                  end
                                  i32.const 61
                                  local.set 8
                                  local.get 6
                                  i32.const 0
                                  i32.lt_s
                                  br_if 12 (;@3;)
                                  local.get 0
                                  i32.const 32
                                  local.get 14
                                  local.get 6
                                  local.get 11
                                  call 20
                                  local.get 6
                                  i32.eqz
                                  if  ;; label = @16
                                    i32.const 0
                                    local.set 6
                                    br 1 (;@15;)
                                  end
                                  i32.const 0
                                  local.set 8
                                  local.get 7
                                  i32.load offset=48
                                  local.set 10
                                  loop  ;; label = @16
                                    local.get 10
                                    i32.load
                                    local.tee 12
                                    i32.eqz
                                    br_if 1 (;@15;)
                                    local.get 7
                                    i32.const 4
                                    i32.add
                                    local.tee 9
                                    local.get 12
                                    call 65
                                    local.tee 12
                                    local.get 8
                                    i32.add
                                    local.tee 8
                                    local.get 6
                                    i32.gt_u
                                    br_if 1 (;@15;)
                                    local.get 0
                                    local.get 9
                                    local.get 12
                                    call 19
                                    local.get 10
                                    i32.const 4
                                    i32.add
                                    local.set 10
                                    local.get 6
                                    local.get 8
                                    i32.gt_u
                                    br_if 0 (;@16;)
                                  end
                                end
                                local.get 0
                                i32.const 32
                                local.get 14
                                local.get 6
                                local.get 11
                                i32.const 8192
                                i32.xor
                                call 20
                                local.get 14
                                local.get 6
                                local.get 6
                                local.get 14
                                i32.lt_s
                                select
                                local.set 6
                                br 8 (;@6;)
                              end
                              local.get 18
                              local.get 9
                              i32.const 0
                              i32.lt_s
                              i32.and
                              br_if 9 (;@4;)
                              i32.const 61
                              local.set 8
                              local.get 0
                              local.get 7
                              f64.load offset=48
                              local.get 14
                              local.get 9
                              local.get 11
                              local.get 6
                              local.get 5
                              call_indirect (type 13)
                              local.tee 6
                              i32.const 0
                              i32.ge_s
                              br_if 7 (;@6;)
                              br 10 (;@3;)
                            end
                            local.get 6
                            i32.load8_u offset=1
                            local.set 10
                            local.get 6
                            i32.const 1
                            i32.add
                            local.set 6
                            br 0 (;@12;)
                          end
                          unreachable
                        end
                        local.get 0
                        br_if 9 (;@1;)
                        local.get 17
                        i32.eqz
                        br_if 3 (;@7;)
                        i32.const 1
                        local.set 6
                        loop  ;; label = @11
                          local.get 4
                          local.get 6
                          i32.const 2
                          i32.shl
                          i32.add
                          i32.load
                          local.tee 0
                          if  ;; label = @12
                            local.get 3
                            local.get 6
                            i32.const 3
                            i32.shl
                            i32.add
                            local.get 0
                            local.get 2
                            call 66
                            i32.const 1
                            local.set 13
                            local.get 6
                            i32.const 1
                            i32.add
                            local.tee 6
                            i32.const 10
                            i32.ne
                            br_if 1 (;@11;)
                            br 11 (;@1;)
                          end
                        end
                        local.get 6
                        i32.const 10
                        i32.ge_u
                        if  ;; label = @11
                          i32.const 1
                          local.set 13
                          br 10 (;@1;)
                        end
                        loop  ;; label = @11
                          local.get 4
                          local.get 6
                          i32.const 2
                          i32.shl
                          i32.add
                          i32.load
                          br_if 1 (;@10;)
                          i32.const 1
                          local.set 13
                          local.get 6
                          i32.const 1
                          i32.add
                          local.tee 6
                          i32.const 10
                          i32.ne
                          br_if 0 (;@11;)
                        end
                        br 9 (;@1;)
                      end
                      i32.const 28
                      local.set 8
                      br 6 (;@3;)
                    end
                    local.get 7
                    local.get 6
                    i32.store8 offset=39
                    i32.const 1
                    local.set 9
                    local.get 22
                    local.set 12
                    local.get 10
                    local.set 11
                  end
                  local.get 9
                  local.get 8
                  local.get 12
                  i32.sub
                  local.tee 10
                  local.get 9
                  local.get 10
                  i32.gt_s
                  select
                  local.tee 9
                  local.get 15
                  i32.const 2147483647
                  i32.xor
                  i32.gt_s
                  br_if 3 (;@4;)
                  i32.const 61
                  local.set 8
                  local.get 14
                  local.get 9
                  local.get 15
                  i32.add
                  local.tee 1
                  local.get 1
                  local.get 14
                  i32.lt_s
                  select
                  local.tee 6
                  local.get 23
                  i32.gt_s
                  br_if 4 (;@3;)
                  local.get 0
                  i32.const 32
                  local.get 6
                  local.get 1
                  local.get 11
                  call 20
                  local.get 0
                  local.get 21
                  local.get 15
                  call 19
                  local.get 0
                  i32.const 48
                  local.get 6
                  local.get 1
                  local.get 11
                  i32.const 65536
                  i32.xor
                  call 20
                  local.get 0
                  i32.const 48
                  local.get 9
                  local.get 10
                  i32.const 0
                  call 20
                  local.get 0
                  local.get 12
                  local.get 10
                  call 19
                  local.get 0
                  i32.const 32
                  local.get 6
                  local.get 1
                  local.get 11
                  i32.const 8192
                  i32.xor
                  call 20
                  local.get 7
                  i32.load offset=60
                  local.set 1
                  br 1 (;@6;)
                end
              end
            end
            i32.const 0
            local.set 13
            br 3 (;@1;)
          end
          i32.const 61
          local.set 8
        end
        global.get 1
        local.get 8
        i32.store
      end
      i32.const -1
      local.set 13
    end
    local.get 7
    i32.const -64
    i32.sub
    global.set 0
    local.get 13)
  (func (;70;) (type 6) (param i32 i32 i32)
    (local i32 i32 i32 i32)
    global.get 0
    i32.const 208
    i32.sub
    local.tee 3
    global.set 0
    local.get 3
    local.get 1
    i32.store offset=204
    local.get 3
    i32.const 160
    i32.add
    local.tee 1
    i32.const 0
    i32.const 40
    memory.fill
    local.get 3
    local.get 3
    i32.load offset=204
    i32.store offset=200
    block  ;; label = @1
      i32.const 0
      local.get 0
      local.get 3
      i32.const 200
      i32.add
      local.get 3
      i32.const 80
      i32.add
      local.get 1
      local.get 2
      call 69
      i32.const 0
      i32.lt_s
      br_if 0 (;@1;)
      i32.const 2956
      i32.load
      i32.const 0
      i32.lt_s
      if (result i32)  ;; label = @2
        i32.const 0
      else
        call 42
      end
      i32.eqz
      i32.const 2880
      i32.const 2880
      i32.load
      local.tee 6
      i32.const -33
      i32.and
      i32.store
      block (result i32)  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            i32.const 2928
            i32.load
            i32.eqz
            if  ;; label = @5
              i32.const 2928
              i32.const 80
              i32.store
              i32.const 2908
              i32.const 0
              i32.store
              i32.const 2896
              i64.const 0
              i64.store
              i32.const 2924
              i32.load
              local.set 4
              i32.const 2924
              local.get 3
              i32.store
              br 1 (;@4;)
            end
            i32.const 2896
            i32.load
            br_if 1 (;@3;)
          end
          i32.const -1
          i32.const 2880
          call 40
          br_if 1 (;@2;)
          drop
        end
        i32.const 2880
        local.get 0
        local.get 3
        i32.const 200
        i32.add
        local.get 3
        i32.const 80
        i32.add
        local.get 3
        i32.const 160
        i32.add
        local.get 2
        call 69
      end
      local.set 1
      local.get 4
      if (result i32)  ;; label = @2
        i32.const 2880
        i32.const 0
        i32.const 0
        i32.const 2916
        i32.load
        call_indirect (type 5)
        drop
        i32.const 2928
        i32.const 0
        i32.store
        i32.const 2924
        local.get 4
        i32.store
        i32.const 2908
        i32.const 0
        i32.store
        i32.const 2900
        i32.load
        local.set 0
        i32.const 2896
        i64.const 0
        i64.store
        i32.const 0
      else
        local.get 1
      end
      drop
      i32.const 2880
      i32.const 2880
      i32.load
      local.get 6
      i32.const 32
      i32.and
      i32.or
      i32.store
      br_if 0 (;@1;)
      call 41
    end
    local.get 3
    i32.const 208
    i32.add
    global.set 0)
  (func (;71;) (type 20) (param f64 i32) (result f64)
    (local i32 i64)
    local.get 0
    i64.reinterpret_f64
    local.tee 3
    i64.const 52
    i64.shr_u
    i32.wrap_i64
    i32.const 2047
    i32.and
    local.tee 2
    i32.const 2047
    i32.ne
    if (result f64)  ;; label = @1
      local.get 2
      i32.eqz
      if  ;; label = @2
        local.get 1
        local.get 0
        f64.const 0x0p+0 (;=0;)
        f64.eq
        if (result i32)  ;; label = @3
          i32.const 0
        else
          local.get 0
          f64.const 0x1p+64 (;=1.84467e+19;)
          f64.mul
          local.get 1
          call 71
          local.set 0
          local.get 1
          i32.load
          i32.const -64
          i32.add
        end
        i32.store
        local.get 0
        return
      end
      local.get 1
      local.get 2
      i32.const 1022
      i32.sub
      i32.store
      local.get 3
      i64.const -9218868437227405313
      i64.and
      i64.const 4602678819172646912
      i64.or
      f64.reinterpret_i64
    else
      local.get 0
    end)
  (func (;72;) (type 0) (param i32)
    local.get 0
    local.get 0
    call 74
    i32.store offset=120
    local.get 0
    i32.const 1
    i32.atomic.store offset=124
    local.get 0
    i32.const 0
    i32.atomic.store offset=128)
  (func (;73;) (type 1) (param i32) (result i32)
    (local i32 i32 i32)
    block  ;; label = @1
      block  ;; label = @2
        local.get 0
        local.tee 1
        i32.const 3
        i32.and
        i32.eqz
        br_if 0 (;@2;)
        local.get 1
        i32.load8_u
        i32.eqz
        if  ;; label = @3
          i32.const 0
          return
        end
        loop  ;; label = @3
          local.get 1
          i32.const 1
          i32.add
          local.tee 1
          i32.const 3
          i32.and
          i32.eqz
          br_if 1 (;@2;)
          local.get 1
          i32.load8_u
          br_if 0 (;@3;)
        end
        br 1 (;@1;)
      end
      loop  ;; label = @2
        local.get 1
        local.tee 2
        i32.const 4
        i32.add
        local.set 1
        i32.const 16843008
        local.get 2
        i32.load
        local.tee 3
        i32.sub
        local.get 3
        i32.or
        i32.const -2139062144
        i32.and
        i32.const -2139062144
        i32.eq
        br_if 0 (;@2;)
      end
      loop  ;; label = @2
        local.get 2
        local.tee 1
        i32.const 1
        i32.add
        local.set 2
        local.get 1
        i32.load8_u
        br_if 0 (;@2;)
      end
    end
    local.get 1
    local.get 0
    i32.sub)
  (func (;74;) (type 1) (param i32) (result i32)
    (local i32 i32 i32 i32 i32 i32)
    global.get 0
    i32.const -64
    i32.add
    local.tee 1
    global.set 0
    i32.const 2812
    call 33
    i32.eqz
    if  ;; label = @1
      i32.const 2864
      i32.load
      local.tee 2
      i32.const 2808
      i32.ne
      if  ;; label = @2
        loop  ;; label = @3
          local.get 2
          i32.load offset=56
          local.get 2
          i32.atomic.load
          i32.eqz
          if  ;; label = @4
            local.get 2
            i32.load offset=52
            local.tee 4
            local.get 2
            i32.load offset=56
            local.tee 5
            i32.store offset=56
            local.get 5
            local.get 4
            i32.store offset=52
            local.get 2
            call 68
          end
          local.tee 2
          i32.const 2808
          i32.ne
          br_if 0 (;@3;)
        end
      end
      i32.const 2812
      call 16
      drop
    end
    block  ;; label = @1
      i32.const 60
      call 23
      local.tee 2
      i32.eqz
      br_if 0 (;@1;)
      i32.const 1536
      call 23
      local.tee 3
      i32.eqz
      if  ;; label = @2
        local.get 2
        call 18
        br 1 (;@1;)
      end
      local.get 1
      i64.const 0
      i64.store offset=40
      local.get 1
      i64.const 0
      i64.store offset=48
      local.get 1
      i32.const 0
      i32.store offset=60
      local.get 1
      i64.const 0
      i64.store offset=32
      local.get 1
      local.get 0
      i32.store offset=28
      local.get 1
      i32.const 0
      i32.store offset=24
      local.get 1
      local.get 3
      i32.store offset=20
      local.get 1
      i32.const 128
      i32.store offset=16
      local.get 1
      i32.const 0
      i32.store offset=12
      local.get 1
      i32.const 0
      i32.store offset=8
      local.get 1
      i32.const 0
      i32.store offset=4
      local.get 1
      i32.const 0
      i32.store
      local.get 2
      local.get 1
      i32.load offset=60
      i32.store
      local.get 2
      local.get 1
      i64.load offset=48
      i64.store offset=20 align=4
      local.get 2
      local.get 1
      i64.load offset=40
      i64.store offset=12 align=4
      local.get 2
      local.get 1
      i64.load offset=32
      i64.store offset=4 align=4
      local.get 2
      local.get 1
      i32.load offset=28
      i32.store offset=28
      local.get 2
      local.get 1
      i32.load offset=24
      i32.store offset=32
      local.get 2
      local.get 1
      i32.load offset=20
      i32.store offset=36
      local.get 2
      local.get 1
      i32.load offset=16
      i32.store offset=40
      local.get 2
      local.get 1
      i32.load offset=12
      i32.store offset=44
      local.get 2
      local.get 1
      i32.load offset=8
      i32.store offset=48
      local.get 2
      local.get 1
      i32.load offset=4
      i32.store offset=52
      local.get 2
      local.get 1
      i32.load
      i32.store offset=56
      local.get 2
      local.set 6
    end
    local.get 1
    i32.const -64
    i32.sub
    global.set 0
    local.get 6)
  (func (;75;) (type 2)
    (local i32)
    block  ;; label = @1
      call 44
      i32.const 10
      i32.ne
      br_if 0 (;@1;)
      i32.const 100
      local.set 0
      loop  ;; label = @2
        block  ;; label = @3
          local.get 0
          i32.eqz
          br_if 0 (;@3;)
          i32.const 3840
          i32.load
          i32.eqz
          br_if 0 (;@3;)
          local.get 0
          i32.const 1
          i32.sub
          local.set 0
          i32.const 3844
          i32.load
          i32.eqz
          br_if 1 (;@2;)
        end
      end
      call 44
      i32.const 10
      i32.ne
      br_if 0 (;@1;)
      loop  ;; label = @2
        block  ;; label = @3
          i32.const 3840
          i32.load
          local.tee 0
          i32.const 2147483647
          i32.and
          i32.const 2147483647
          i32.ne
          br_if 0 (;@3;)
          i32.const 3844
          i32.const 1
          i32.atomic.rmw.add
          drop
          i32.const 3840
          local.get 0
          i32.const -1
          i32.atomic.rmw.cmpxchg
          drop
          i32.const 3848
          i32.load
          drop
          i32.const 3840
          i32.const -1
          call 48
          local.set 0
          i32.const 3844
          i32.const 1
          i32.atomic.rmw.sub
          drop
          local.get 0
          i32.eqz
          br_if 0 (;@3;)
          local.get 0
          i32.const 27
          i32.ne
          br_if 2 (;@1;)
        end
        call 44
        i32.const 10
        i32.eq
        br_if 0 (;@2;)
      end
    end)
  (func (;76;) (type 3) (param i32 i32)
    (local i32)
    global.get 0
    i32.const 16
    i32.sub
    local.tee 2
    global.set 0
    local.get 2
    local.get 1
    i32.store offset=12
    local.get 0
    local.get 1
    i32.const 20
    call 70
    local.get 2
    i32.const 16
    i32.add
    global.set 0)
  (func (;77;) (type 0) (param i32)
    local.get 0
    i32.load
    i32.const 129
    i32.ge_s
    if  ;; label = @1
      i32.const 4400
      i32.load
      local.tee 0
      if  ;; label = @2
        loop  ;; label = @3
          i32.const 4400
          i32.const 4404
          local.get 0
          call 25
          i32.const 4400
          i32.load
          local.tee 0
          br_if 0 (;@3;)
        end
      end
    end)
  (func (;78;) (type 4) (param i32 i32) (result i32)
    (local i32 i32 i32)
    global.get 3
    local.tee 2
    i32.load offset=72
    i32.eqz
    if  ;; label = @1
      local.get 2
      i32.const 3328
      i32.store offset=72
    end
    block  ;; label = @1
      i32.const 3852
      i32.load
      global.get 3
      i32.load offset=24
      i32.eq
      br_if 0 (;@1;)
      i32.const 3840
      i32.const 0
      i32.const 2147483647
      i32.atomic.rmw.cmpxchg
      if (result i32)  ;; label = @2
        i32.const 10
      else
        i32.const 3852
        global.get 3
        i32.load offset=24
        i32.store
        i32.const 0
      end
      i32.const 10
      i32.ne
      br_if 0 (;@1;)
      i32.const 100
      local.set 2
      loop  ;; label = @2
        block  ;; label = @3
          local.get 2
          i32.eqz
          br_if 0 (;@3;)
          i32.const 3840
          i32.load
          i32.eqz
          br_if 0 (;@3;)
          local.get 2
          i32.const 1
          i32.sub
          local.set 2
          i32.const 3844
          i32.load
          i32.eqz
          br_if 1 (;@2;)
        end
      end
      i32.const 3840
      i32.const 0
      i32.const 2147483647
      i32.atomic.rmw.cmpxchg
      if (result i32)  ;; label = @2
        i32.const 10
      else
        i32.const 3852
        global.get 3
        i32.load offset=24
        i32.store
        i32.const 0
      end
      i32.const 10
      i32.eq
      if  ;; label = @2
        loop  ;; label = @3
          block  ;; label = @4
            i32.const 3840
            i32.load
            local.tee 2
            i32.eqz
            br_if 0 (;@4;)
            i32.const 3844
            i32.const 1
            i32.atomic.rmw.add
            drop
            i32.const 3840
            local.get 2
            local.get 2
            i32.const -2147483648
            i32.or
            local.tee 2
            i32.atomic.rmw.cmpxchg
            drop
            i32.const 3848
            i32.load
            drop
            i32.const 3840
            local.get 2
            call 48
            local.set 2
            i32.const 3844
            i32.const 1
            i32.atomic.rmw.sub
            drop
            local.get 2
            i32.eqz
            br_if 0 (;@4;)
            local.get 2
            i32.const 27
            i32.ne
            br_if 3 (;@1;)
          end
          i32.const 3840
          i32.const 0
          i32.const 2147483647
          i32.atomic.rmw.cmpxchg
          if (result i32)  ;; label = @4
            i32.const 10
          else
            i32.const 3852
            global.get 3
            i32.load offset=24
            i32.store
            i32.const 0
          end
          i32.const 10
          i32.eq
          br_if 0 (;@3;)
        end
      end
      i32.const 3852
      global.get 3
      i32.load offset=24
      i32.store
    end
    local.get 1
    i32.const 15
    local.get 1
    select
    local.set 2
    i32.const 3872
    i32.load
    local.tee 3
    local.set 1
    block (result i32)  ;; label = @1
      loop  ;; label = @2
        local.get 1
        i32.const 2
        i32.shl
        i32.const 3888
        i32.add
        local.tee 4
        i32.load
        i32.eqz
        if  ;; label = @3
          local.get 0
          local.get 1
          i32.store
          i32.const 3872
          local.get 1
          i32.store
          local.get 4
          local.get 2
          i32.store
          i32.const 0
          br 2 (;@1;)
        end
        local.get 1
        i32.const 1
        i32.add
        i32.const 127
        i32.and
        local.tee 1
        local.get 3
        i32.ne
        br_if 0 (;@2;)
      end
      i32.const 6
    end
    call 43)
  (func (;79;) (type 4) (param i32 i32) (result i32)
    (local i32 i32 i32 i32 i32)
    global.get 0
    i32.const 48
    i32.sub
    local.tee 5
    global.set 0
    block  ;; label = @1
      local.get 0
      i32.eqz
      if  ;; label = @2
        i32.const 28
        local.set 3
        br 1 (;@1;)
      end
      i32.const 3316
      i32.load
      i32.eqz
      if  ;; label = @2
        i32.const 3316
        i32.const 43
        i32.store
      end
      i32.const 3101
      i32.load8_u
      i32.eqz
      if  ;; label = @2
        block  ;; label = @3
          i32.const 3103
          i32.load8_s
          local.tee 4
          i32.eqz
          br_if 0 (;@3;)
          i32.const 3292
          i32.const 0
          i32.const -2147483647
          i32.atomic.rmw.cmpxchg
          local.set 2
          local.get 4
          i32.const 0
          i32.lt_s
          if  ;; label = @4
            i32.const 3103
            i32.const 0
            i32.store8
          end
          local.get 2
          i32.eqz
          br_if 0 (;@3;)
          loop  ;; label = @4
            i32.const 3292
            local.get 2
            i32.const 2147483647
            i32.add
            local.get 2
            local.get 2
            i32.const 0
            i32.lt_s
            select
            local.tee 4
            local.get 4
            i32.const 2147483647
            i32.sub
            i32.atomic.rmw.cmpxchg
            local.tee 2
            local.get 4
            i32.eq
            br_if 1 (;@3;)
            local.get 3
            i32.const 1
            i32.add
            local.tee 3
            i32.const 10
            i32.ne
            br_if 0 (;@4;)
          end
          i32.const 3292
          i32.const 1
          i32.atomic.rmw.add
          i32.const 1
          i32.add
          local.set 2
          loop  ;; label = @4
            local.get 2
            i32.const 0
            i32.lt_s
            if  ;; label = @5
              i32.const 3292
              i32.const 0
              local.get 2
              call 25
              local.get 2
              i32.const 2147483647
              i32.add
              local.set 2
            end
            local.get 2
            i32.const 3292
            local.get 2
            local.get 2
            i32.const -2147483648
            i32.or
            i32.atomic.rmw.cmpxchg
            local.tee 2
            i32.ne
            br_if 0 (;@4;)
          end
        end
        i32.const 3296
        i32.load
        local.tee 2
        if  ;; label = @3
          loop  ;; label = @4
            block  ;; label = @5
              local.get 2
              i32.eqz
              br_if 0 (;@5;)
              local.get 2
              i32.load offset=76
              i32.const 0
              i32.ge_s
              br_if 0 (;@5;)
              local.get 2
              i32.const 0
              i32.store offset=76
            end
            local.get 2
            i32.load offset=56
            local.tee 2
            br_if 0 (;@4;)
          end
        end
        block  ;; label = @3
          i32.const 3292
          i32.load
          i32.const 0
          i32.ge_s
          br_if 0 (;@3;)
          i32.const 3292
          i32.const 2147483647
          i32.atomic.rmw.add
          i32.const -2147483647
          i32.eq
          br_if 0 (;@3;)
          i32.const 3292
          i32.const 1
          call 21
        end
        block  ;; label = @3
          i32.const 3300
          i32.load
          local.tee 2
          i32.eqz
          br_if 0 (;@3;)
          local.get 2
          i32.load offset=76
          i32.const 0
          i32.ge_s
          br_if 0 (;@3;)
          local.get 2
          i32.const 0
          i32.store offset=76
        end
        block  ;; label = @3
          i32.const 3024
          i32.load
          local.tee 2
          i32.eqz
          br_if 0 (;@3;)
          local.get 2
          i32.load offset=76
          i32.const 0
          i32.ge_s
          br_if 0 (;@3;)
          local.get 2
          i32.const 0
          i32.store offset=76
        end
        block  ;; label = @3
          i32.const 3300
          i32.load
          local.tee 2
          i32.eqz
          br_if 0 (;@3;)
          local.get 2
          i32.load offset=76
          i32.const 0
          i32.ge_s
          br_if 0 (;@3;)
          local.get 2
          i32.const 0
          i32.store offset=76
        end
        i32.const 3101
        i32.const 1
        i32.store8
      end
      local.get 5
      i32.const 8
      i32.add
      i32.const 0
      i32.const 40
      memory.fill
      local.get 5
      i32.const 2868
      i32.load
      local.tee 2
      i32.store offset=4
      i32.const 2872
      i32.load
      i32.const 146
      i32.add
      local.tee 3
      i32.const 0
      local.get 2
      i32.const 15
      i32.add
      local.get 5
      i32.load offset=12
      select
      i32.add
      local.tee 4
      call 23
      local.tee 2
      i32.const 0
      local.get 3
      memory.fill
      local.get 2
      local.get 4
      i32.store offset=48
      local.get 2
      local.get 2
      i32.store offset=44
      local.get 2
      local.get 2
      i32.store
      i32.const 3316
      i32.const 3316
      i32.load
      local.tee 3
      i32.const 1
      i32.add
      i32.store
      local.get 2
      local.get 2
      i32.const 76
      i32.add
      i32.store offset=76
      local.get 2
      local.get 3
      i32.store offset=24
      local.get 2
      i32.const 3132
      i32.store offset=96
      local.get 2
      i32.const 3
      i32.const 2
      local.get 5
      i32.load offset=16
      select
      i32.store offset=32
      local.get 2
      local.get 5
      i32.load offset=4
      local.tee 4
      i32.store offset=56
      local.get 2
      local.get 2
      i32.const 135
      i32.add
      i32.const -4
      i32.and
      local.tee 3
      i32.store offset=116
      local.get 3
      i32.const 8
      i32.add
      local.set 3
      i32.const 2872
      i32.load
      if  ;; label = @2
        local.get 2
        local.get 3
        i32.const 3
        i32.add
        i32.const -4
        i32.and
        local.tee 3
        i32.store offset=72
        i32.const 2872
        i32.load
        local.get 3
        i32.add
        local.set 3
      end
      local.get 2
      local.get 5
      i32.load offset=12
      local.tee 6
      local.get 3
      local.get 4
      i32.add
      i32.const 15
      i32.add
      i32.const -16
      i32.and
      local.get 6
      select
      i32.store offset=52
      local.get 2
      call 72
      global.get 3
      local.set 3
      call 47
      local.get 3
      i32.load offset=12
      local.set 4
      local.get 2
      local.get 3
      i32.store offset=8
      local.get 2
      local.get 4
      i32.store offset=12
      local.get 4
      local.get 2
      i32.store offset=8
      local.get 2
      i32.load offset=8
      local.get 2
      i32.store offset=12
      call 46
      i32.const 3104
      i32.const 3104
      i32.load
      local.tee 3
      i32.const 1
      i32.add
      i32.store
      local.get 3
      i32.eqz
      if  ;; label = @2
        i32.const 3103
        i32.const 1
        i32.store8
      end
      local.get 2
      local.get 5
      i32.const 4
      i32.add
      i32.const 1
      local.get 1
      call 5
      local.tee 3
      if  ;; label = @2
        i32.const 3104
        i32.const 3104
        i32.load
        i32.const 1
        i32.sub
        local.tee 0
        i32.store
        local.get 0
        i32.eqz
        if  ;; label = @3
          i32.const 3103
          i32.const 0
          i32.store8
        end
        call 47
        local.get 2
        i32.load offset=12
        local.tee 0
        local.get 2
        i32.load offset=8
        local.tee 1
        i32.store offset=8
        local.get 1
        local.get 0
        i32.store offset=12
        local.get 2
        local.get 2
        i32.store offset=12
        local.get 2
        local.get 2
        i32.store offset=8
        call 46
        br 1 (;@1;)
      end
      local.get 0
      local.get 2
      i32.store
    end
    local.get 5
    i32.const 48
    i32.add
    global.set 0
    local.get 3)
  (func (;80;) (type 2)
    (local i32)
    block  ;; label = @1
      global.get 5
      if  ;; label = @2
        i32.const 3288
        i32.atomic.load
        br_if 1 (;@1;)
        global.get 1
        local.tee 0
        i32.load offset=4
        i32.eqz
        if  ;; label = @3
          local.get 0
          i32.const 1
          i32.store offset=4
          i32.const 3056
          call 17
          drop
          i32.const 3056
          global.get 3
          call 85
          local.set 0
          i32.const 3056
          call 16
          drop
          block  ;; label = @4
            local.get 0
            i32.eqz
            br_if 0 (;@4;)
            local.get 0
            i32.load offset=32
            br_if 0 (;@4;)
            local.get 0
            call 38
          end
          global.get 1
          i32.const 0
          i32.store offset=4
        end
      end
      return
    end
    i32.const 3288
    i32.atomic.load
    call 7
    call 6
    unreachable)
  (func (;81;) (type 2)
    i32.const 3092
    i32.const 12
    call 78
    drop)
  (func (;82;) (type 0) (param i32)
    (local i32 i32 i32)
    global.get 0
    i32.const 32
    i32.sub
    local.tee 1
    global.set 0
    block  ;; label = @1
      local.get 0
      i32.load offset=8
      i32.eqz
      if  ;; label = @2
        local.get 0
        i32.const 16
        i32.add
        local.tee 2
        call 17
        drop
        local.get 0
        i32.const 2
        i32.store offset=12
        local.get 2
        call 16
        drop
        local.get 0
        i32.const 40
        i32.add
        call 86
        br 1 (;@1;)
      end
      local.get 0
      i32.load offset=24
      if  ;; label = @2
        local.get 0
        i32.load offset=16
        local.set 2
        local.get 0
        i32.load offset=12
        local.get 1
        local.get 0
        i32.store offset=28
        local.get 1
        local.get 0
        i32.store offset=16
        local.get 1
        i32.const 6
        i32.store offset=24
        local.get 1
        i32.const 11
        i32.store offset=20
        local.get 1
        local.get 1
        i64.load offset=20 align=4
        i64.store offset=8
        local.get 2
        local.get 1
        i32.const 8
        i32.add
        call 34
        br_if 1 (;@1;)
      end
      local.get 0
      call 31
    end
    local.get 1
    i32.const 32
    i32.add
    global.set 0)
  (func (;83;) (type 0) (param i32)
    (local i32 i32)
    local.get 0
    i32.load offset=8
    i32.eqz
    if  ;; label = @1
      local.get 0
      i32.const 16
      i32.add
      call 77
      block  ;; label = @2
        local.get 0
        i32.const 40
        i32.add
        local.tee 0
        i32.load
        i32.eqz
        br_if 0 (;@2;)
        local.get 0
        i32.load offset=12
        i32.eqz
        br_if 0 (;@2;)
        local.get 0
        i32.const 12
        i32.add
        local.tee 1
        i32.const -2147483648
        i32.atomic.rmw.or
        drop
        local.get 0
        i32.const 8
        i32.add
        local.tee 2
        i32.const 1
        i32.atomic.rmw.add
        drop
        local.get 2
        i32.const 2147483647
        call 21
        local.get 0
        i32.load offset=12
        local.tee 0
        i32.const 2147483647
        i32.and
        i32.eqz
        br_if 0 (;@2;)
        loop  ;; label = @3
          local.get 1
          i32.const 0
          local.get 0
          call 25
          local.get 1
          i32.load
          local.tee 0
          i32.const 2147483647
          i32.and
          br_if 0 (;@3;)
        end
      end
    end)
  (func (;84;) (type 0) (param i32)
    (local i32 i32)
    local.get 0
    local.get 0
    i32.load offset=88
    i32.eq
    if  ;; label = @1
      local.get 0
      i64.const 0
      i64.store offset=88 align=4
      i32.const 3092
      i32.load
      i32.const 0
      call 29
      return
    end
    global.get 3
    i32.load offset=72
    i32.const 3092
    i32.load
    local.tee 1
    i32.const 2
    i32.shl
    i32.add
    i32.load
    local.tee 2
    local.get 0
    i32.eq
    if  ;; label = @1
      local.get 1
      local.get 2
      i32.load offset=88
      call 29
    end
    local.get 0
    i32.load offset=92
    local.tee 2
    local.get 0
    i32.load offset=88
    local.tee 1
    i32.store offset=88
    local.get 1
    local.get 2
    i32.store offset=92
    local.get 0
    i64.const 0
    i64.store offset=88 align=4)
  (func (;85;) (type 4) (param i32 i32) (result i32)
    (local i32 i32 i32)
    block  ;; label = @1
      local.get 0
      i32.load offset=28
      local.tee 2
      i32.const 0
      i32.le_s
      br_if 0 (;@1;)
      local.get 0
      i32.load offset=24
      local.set 3
      i32.const 0
      local.set 0
      loop  ;; label = @2
        local.get 1
        local.get 3
        local.get 0
        i32.const 2
        i32.shl
        i32.add
        i32.load
        local.tee 4
        i32.load offset=28
        i32.ne
        if  ;; label = @3
          local.get 2
          local.get 0
          i32.const 1
          i32.add
          local.tee 0
          i32.ne
          br_if 1 (;@2;)
          br 2 (;@1;)
        end
      end
      local.get 4
      return
    end
    i32.const 0)
  (func (;86;) (type 0) (param i32)
    local.get 0
    i32.load
    i32.eqz
    if  ;; label = @1
      local.get 0
      i32.const 1
      call 87
      drop
      return
    end
    local.get 0
    i32.load offset=12
    if  ;; label = @1
      local.get 0
      i32.const 8
      i32.add
      local.tee 0
      i32.const 1
      i32.atomic.rmw.add
      drop
      local.get 0
      i32.const 1
      call 21
    end)
  (func (;87;) (type 4) (param i32 i32) (result i32)
    (local i32 i32 i32 i32 i32)
    global.get 0
    i32.const 16
    i32.sub
    local.tee 3
    global.set 0
    local.get 3
    i32.const 0
    i32.store offset=12
    local.get 0
    i32.const 32
    i32.add
    local.tee 6
    call 36
    local.get 0
    i32.load offset=20
    local.tee 2
    i32.const 0
    i32.ne
    local.set 5
    block  ;; label = @1
      local.get 1
      i32.eqz
      br_if 0 (;@1;)
      local.get 2
      i32.eqz
      br_if 0 (;@1;)
      loop  ;; label = @2
        block  ;; label = @3
          local.get 2
          i32.const 8
          i32.add
          i32.const 0
          i32.const 1
          i32.atomic.rmw.cmpxchg
          if  ;; label = @4
            local.get 3
            local.get 3
            i32.load offset=12
            i32.const 1
            i32.add
            i32.store offset=12
            local.get 2
            local.get 3
            i32.const 12
            i32.add
            i32.store offset=16
            br 1 (;@3;)
          end
          local.get 4
          local.get 2
          local.get 4
          select
          local.set 4
          local.get 1
          i32.const 1
          i32.sub
          local.set 1
        end
        local.get 2
        i32.load
        local.tee 2
        i32.const 0
        i32.ne
        local.set 5
        local.get 1
        i32.eqz
        br_if 1 (;@1;)
        local.get 2
        br_if 0 (;@2;)
      end
    end
    block  ;; label = @1
      local.get 5
      if  ;; label = @2
        local.get 2
        i32.load offset=4
        local.tee 1
        if  ;; label = @3
          local.get 1
          i32.const 0
          i32.store
        end
        local.get 2
        i32.const 0
        i32.store offset=4
        br 1 (;@1;)
      end
      local.get 0
      i32.const 0
      i32.store offset=4
    end
    local.get 0
    local.get 2
    i32.store offset=20
    local.get 6
    call 35
    local.get 3
    i32.load offset=12
    local.tee 2
    if  ;; label = @1
      loop  ;; label = @2
        local.get 3
        i32.const 12
        i32.add
        i32.const 0
        local.get 2
        call 25
        local.get 3
        i32.load offset=12
        local.tee 2
        br_if 0 (;@2;)
      end
    end
    local.get 4
    if  ;; label = @1
      local.get 4
      i32.const 12
      i32.add
      call 35
    end
    local.get 3
    i32.const 16
    i32.add
    global.set 0
    i32.const 0)
  (func (;88;) (type 3) (param i32 i32)
    (local i32 i32 i32 i32 i32 i32)
    global.get 0
    i32.const 32
    i32.sub
    local.tee 2
    global.set 0
    local.get 2
    i32.const 0
    i32.store offset=24
    local.get 2
    i64.const 0
    i64.store offset=16
    local.get 2
    i64.const 0
    i64.store offset=8
    local.get 0
    i32.load offset=16
    drop
    global.get 4
    if  ;; label = @1
      call 1
    end
    block  ;; label = @1
      block  ;; label = @2
        local.get 1
        i32.load8_u
        i32.const 15
        i32.and
        i32.eqz
        br_if 0 (;@2;)
        global.get 3
        i32.load offset=24
        local.get 1
        i32.load offset=4
        i32.const 2147483647
        i32.and
        i32.eq
        br_if 0 (;@2;)
        br 1 (;@1;)
      end
      block (result i32)  ;; label = @2
        local.get 0
        i32.load
        local.tee 7
        if  ;; label = @3
          local.get 0
          i32.load offset=8
          local.set 3
          local.get 0
          i32.const 12
          i32.add
          i32.const 1
          i32.atomic.rmw.add
          drop
          local.get 0
          i32.const 8
          i32.add
          br 1 (;@2;)
        end
        local.get 0
        i32.const 32
        i32.add
        local.tee 3
        call 36
        local.get 2
        i32.const 2
        i32.store offset=20
        local.get 2
        i32.const 0
        i32.store offset=16
        local.get 2
        local.get 0
        i32.load offset=4
        local.tee 4
        i32.store offset=12
        local.get 0
        local.get 2
        i32.const 8
        i32.add
        local.tee 5
        i32.store offset=4
        block  ;; label = @3
          local.get 0
          i32.load offset=20
          i32.eqz
          if  ;; label = @4
            local.get 0
            local.get 5
            i32.store offset=20
            br 1 (;@3;)
          end
          local.get 4
          local.get 2
          i32.const 8
          i32.add
          i32.store
        end
        local.get 3
        call 35
        i32.const 2
        local.set 3
        local.get 2
        i32.const 20
        i32.add
      end
      local.set 5
      local.get 1
      call 16
      drop
      global.get 3
      local.set 6
      local.get 2
      i32.const 4
      i32.add
      local.tee 4
      if  ;; label = @2
        local.get 4
        local.get 6
        i32.load8_u offset=40
        i32.store
      end
      local.get 6
      i32.const 2
      i32.store8 offset=40
      local.get 2
      i32.load offset=4
      i32.const 1
      i32.eq
      if  ;; label = @2
        global.get 3
        i32.const 1
        i32.store8 offset=40
      end
      local.get 5
      local.get 3
      call 37
      local.set 4
      block  ;; label = @2
        local.get 5
        i32.load
        local.get 3
        i32.ne
        br_if 0 (;@2;)
        loop  ;; label = @3
          local.get 4
          i32.const 27
          i32.ne
          i32.const 0
          local.get 4
          select
          br_if 1 (;@2;)
          local.get 5
          local.get 3
          call 37
          local.set 4
          local.get 5
          i32.load
          local.get 3
          i32.eq
          br_if 0 (;@3;)
        end
      end
      local.get 4
      i32.const 0
      local.get 4
      i32.const 27
      i32.ne
      select
      local.set 4
      block (result i32)  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            local.get 7
            if  ;; label = @5
              local.get 4
              i32.const 11
              i32.eq
              if  ;; label = @6
                i32.const 11
                i32.const 0
                local.get 0
                i32.load offset=8
                local.get 3
                i32.eq
                select
                local.set 4
              end
              local.get 0
              i32.const 12
              i32.add
              local.tee 3
              i32.const -1
              i32.atomic.rmw.add
              i32.const -2147483647
              i32.ne
              br_if 2 (;@3;)
              br 1 (;@4;)
            end
            local.get 2
            i32.const 16
            i32.add
            i32.const 0
            i32.const 2
            i32.atomic.rmw.cmpxchg
            i32.eqz
            if  ;; label = @5
              local.get 0
              i32.const 32
              i32.add
              local.tee 3
              call 36
              block  ;; label = @6
                local.get 0
                i32.load offset=4
                local.get 2
                i32.const 8
                i32.add
                i32.eq
                if  ;; label = @7
                  local.get 0
                  local.get 2
                  i32.load offset=12
                  i32.store offset=4
                  br 1 (;@6;)
                end
                local.get 2
                i32.load offset=8
                local.tee 5
                i32.eqz
                br_if 0 (;@6;)
                local.get 5
                local.get 2
                i32.load offset=12
                i32.store offset=4
              end
              block  ;; label = @6
                local.get 0
                i32.load offset=20
                local.get 2
                i32.const 8
                i32.add
                i32.eq
                if  ;; label = @7
                  local.get 0
                  local.get 2
                  i32.load offset=8
                  i32.store offset=20
                  br 1 (;@6;)
                end
                local.get 2
                i32.load offset=12
                local.tee 0
                i32.eqz
                br_if 0 (;@6;)
                local.get 0
                local.get 2
                i32.load offset=8
                i32.store
              end
              local.get 3
              call 35
              local.get 2
              i32.load offset=24
              local.tee 0
              i32.eqz
              br_if 2 (;@3;)
              local.get 0
              i32.const -1
              i32.atomic.rmw.add
              i32.const 1
              i32.ne
              br_if 2 (;@3;)
              local.get 2
              i32.load offset=24
              local.set 3
              br 1 (;@4;)
            end
            local.get 2
            i32.const 20
            i32.add
            call 36
            local.get 1
            call 17
            drop
            block  ;; label = @5
              local.get 2
              i32.load offset=12
              br_if 0 (;@5;)
              local.get 1
              i32.load8_u
              i32.const 8
              i32.and
              br_if 0 (;@5;)
              local.get 1
              i32.const 8
              i32.add
              i32.const 1
              i32.atomic.rmw.add
              drop
            end
            block  ;; label = @5
              local.get 2
              i32.load offset=8
              local.tee 3
              if  ;; label = @6
                local.get 1
                i32.load offset=4
                local.tee 0
                i32.const 0
                i32.gt_s
                if  ;; label = @7
                  local.get 1
                  i32.const 4
                  i32.add
                  local.get 0
                  local.get 0
                  i32.const -2147483648
                  i32.or
                  i32.atomic.rmw.cmpxchg
                  drop
                end
                local.get 3
                i32.const 12
                i32.add
                local.tee 0
                i32.const 0
                i32.atomic.store
                local.get 0
                i32.const 2147483647
                call 21
                br 1 (;@5;)
              end
              local.get 1
              i32.load8_u
              i32.const 8
              i32.and
              br_if 0 (;@5;)
              local.get 1
              i32.const 8
              i32.add
              i32.const 1
              i32.atomic.rmw.sub
              drop
            end
            local.get 2
            i32.load offset=4
            br 2 (;@2;)
          end
          local.get 3
          i32.const 1
          call 21
        end
        local.get 1
        call 17
        local.set 0
        local.get 2
        i32.load offset=4
        local.tee 1
        i32.const 2
        i32.le_u
        if (result i32)  ;; label = @3
          global.get 3
          local.get 1
          i32.store8 offset=40
          i32.const 0
        else
          i32.const 28
        end
        drop
        local.get 0
        local.get 4
        local.get 0
        select
        i32.const 11
        i32.ne
        br_if 1 (;@1;)
        i32.const 1
      end
      local.tee 0
      i32.const 2
      i32.le_u
      if (result i32)  ;; label = @2
        global.get 3
        local.get 0
        i32.store8 offset=40
        i32.const 0
      else
        i32.const 28
      end
      drop
    end
    local.get 2
    i32.const 32
    i32.add
    global.set 0)
  (func (;89;) (type 0) (param i32)
    local.get 0
    call 90
    drop
    local.get 0
    call 18)
  (func (;90;) (type 1) (param i32) (result i32)
    (local i32)
    local.get 0
    i32.const 2692
    i32.store
    local.get 0
    i32.load offset=4
    i32.const 12
    i32.sub
    local.tee 1
    i32.const 8
    i32.add
    i32.const -1
    i32.atomic.rmw.add
    i32.const 1
    i32.sub
    i32.const 0
    i32.lt_s
    if  ;; label = @1
      local.get 1
      call 18
    end
    local.get 0)
  (func (;91;) (type 4) (param i32 i32) (result i32)
    (local i32 i32 i32 i32 i32 i32 i32)
    block  ;; label = @1
      local.get 0
      i32.load offset=44
      local.get 0
      i32.load offset=48
      i32.const 1
      i32.add
      local.get 0
      i32.load offset=40
      local.tee 2
      i32.rem_s
      i32.ne
      br_if 0 (;@1;)
      local.get 2
      i32.const 24
      i32.mul
      call 23
      local.tee 3
      if (result i32)  ;; label = @2
        local.get 2
        i32.const 1
        i32.shl
        local.set 6
        block  ;; label = @3
          local.get 0
          i32.load offset=48
          local.tee 4
          local.get 0
          i32.load offset=44
          local.tee 2
          i32.ge_s
          if  ;; label = @4
            local.get 0
            i32.load offset=36
            local.get 2
            i32.const 12
            i32.mul
            i32.add
            local.set 5
            local.get 4
            local.get 2
            i32.sub
            local.tee 2
            i32.const 12
            i32.mul
            local.tee 4
            if (result i32)  ;; label = @5
              local.get 3
              local.get 5
              local.get 4
              memory.copy
              i32.const 0
            else
              local.get 3
            end
            drop
            br 1 (;@3;)
          end
          local.get 0
          i32.load offset=36
          local.get 2
          i32.const 12
          i32.mul
          i32.add
          local.set 5
          local.get 0
          i32.load offset=40
          local.get 2
          i32.sub
          local.tee 7
          i32.const 12
          i32.mul
          local.tee 2
          if (result i32)  ;; label = @4
            local.get 3
            local.get 5
            local.get 2
            memory.copy
            i32.const 0
          else
            local.get 3
          end
          drop
          local.get 2
          local.get 3
          i32.add
          local.set 2
          local.get 0
          i32.load offset=36
          local.set 5
          local.get 4
          i32.const 12
          i32.mul
          local.tee 8
          if (result i32)  ;; label = @4
            local.get 2
            local.get 5
            local.get 8
            memory.copy
            i32.const 0
          else
            local.get 2
          end
          drop
          local.get 4
          local.get 7
          i32.add
          local.set 2
        end
        local.get 0
        i32.load offset=36
        call 18
        local.get 0
        local.get 2
        i32.store offset=48
        local.get 0
        i32.const 0
        i32.store offset=44
        local.get 0
        local.get 6
        i32.store offset=40
        local.get 0
        local.get 3
        i32.store offset=36
        i32.const 1
      else
        i32.const 0
      end
      br_if 0 (;@1;)
      i32.const 0
      return
    end
    local.get 0
    i32.load offset=36
    local.get 0
    i32.load offset=48
    i32.const 12
    i32.mul
    i32.add
    local.tee 3
    local.get 1
    i64.load align=4
    i64.store align=4
    local.get 3
    local.get 1
    i32.load offset=8
    i32.store offset=8
    local.get 0
    local.get 0
    i32.load offset=48
    i32.const 1
    i32.add
    local.get 0
    i32.load offset=40
    i32.rem_s
    i32.store offset=48
    i32.const 1)
  (func (;92;) (type 10) (param i32 i32 i32 i32)
    local.get 0
    i32.const 1
    i32.store8 offset=53
    block  ;; label = @1
      local.get 2
      local.get 0
      i32.load offset=4
      i32.ne
      br_if 0 (;@1;)
      local.get 0
      i32.const 1
      i32.store8 offset=52
      block  ;; label = @2
        local.get 0
        i32.load offset=16
        local.tee 2
        i32.eqz
        if  ;; label = @3
          local.get 0
          i32.const 1
          i32.store offset=36
          local.get 0
          local.get 3
          i32.store offset=24
          local.get 0
          local.get 1
          i32.store offset=16
          local.get 3
          i32.const 1
          i32.ne
          br_if 2 (;@1;)
          local.get 0
          i32.load offset=48
          i32.const 1
          i32.eq
          br_if 1 (;@2;)
          br 2 (;@1;)
        end
        local.get 1
        local.get 2
        i32.eq
        if  ;; label = @3
          local.get 0
          i32.load offset=24
          local.tee 2
          i32.const 2
          i32.eq
          if  ;; label = @4
            local.get 0
            local.get 3
            i32.store offset=24
            local.get 3
            local.set 2
          end
          local.get 0
          i32.load offset=48
          i32.const 1
          i32.ne
          br_if 2 (;@1;)
          local.get 2
          i32.const 1
          i32.eq
          br_if 1 (;@2;)
          br 2 (;@1;)
        end
        local.get 0
        local.get 0
        i32.load offset=36
        i32.const 1
        i32.add
        i32.store offset=36
      end
      local.get 0
      i32.const 1
      i32.store8 offset=54
    end)
  (func (;93;) (type 6) (param i32 i32 i32)
    (local i32)
    local.get 0
    i32.load offset=36
    local.tee 3
    i32.eqz
    if  ;; label = @1
      local.get 0
      local.get 2
      i32.store offset=24
      local.get 0
      local.get 1
      i32.store offset=16
      local.get 0
      i32.const 1
      i32.store offset=36
      local.get 0
      local.get 0
      i32.load offset=56
      i32.store offset=20
      return
    end
    block  ;; label = @1
      block  ;; label = @2
        local.get 0
        i32.load offset=20
        local.get 0
        i32.load offset=56
        i32.ne
        br_if 0 (;@2;)
        local.get 0
        i32.load offset=16
        local.get 1
        i32.ne
        br_if 0 (;@2;)
        local.get 0
        i32.load offset=24
        i32.const 2
        i32.ne
        br_if 1 (;@1;)
        local.get 0
        local.get 2
        i32.store offset=24
        return
      end
      local.get 0
      i32.const 1
      i32.store8 offset=54
      local.get 0
      i32.const 2
      i32.store offset=24
      local.get 0
      local.get 3
      i32.const 1
      i32.add
      i32.store offset=36
    end)
  (func (;94;) (type 0) (param i32)
    (local i32 i32 i32)
    global.get 0
    i32.const 16
    i32.sub
    local.tee 1
    global.set 0
    local.get 0
    i32.const 4
    i32.add
    local.tee 2
    call 17
    drop
    local.get 0
    i32.load offset=44
    local.get 0
    i32.load offset=48
    i32.ne
    if  ;; label = @1
      loop  ;; label = @2
        local.get 1
        i32.const 4
        i32.add
        local.get 0
        call 57
        local.get 1
        i32.load offset=8
        local.tee 3
        if  ;; label = @3
          local.get 1
          i32.load offset=12
          local.get 3
          call_indirect (type 0)
        end
        local.get 0
        i32.load offset=44
        local.get 0
        i32.load offset=48
        i32.ne
        br_if 0 (;@2;)
      end
    end
    local.get 2
    call 16
    drop
    local.get 0
    i32.const 0
    i32.atomic.store
    local.get 1
    i32.const 16
    i32.add
    global.set 0)
  (func (;95;) (type 2)
    i32.const 71632
    global.set 8
    i32.const 6096
    global.set 7
    i32.const 3156
    call 9
    i32.const 3156
    i32.const 3156
    i32.store
    i32.const 3208
    global.get 8
    i32.store
    i32.const 3188
    i32.const 2
    i32.store
    i32.const 3212
    global.get 8
    global.get 7
    i32.sub
    i32.store
    i32.const 3232
    i32.const 3232
    i32.store
    i32.const 3252
    i32.const 3132
    i32.store
    i32.const 3180
    i32.const 42
    i32.store
    i32.const 3228
    i32.const 3328
    i32.store
    i32.const 3168
    i32.const 3156
    i32.store
    i32.const 3164
    i32.const 3156
    i32.store
    i32.const 3156
    call 72
    i32.const 3156
    call 8)
  (func (;96;) (type 2)
    call 22
    unreachable)
  (func (;97;) (type 0) (param i32)
    local.get 0
    if  ;; label = @1
      local.get 0
      call 52
      drop
    end
    local.get 0
    call 18)
  (func (;98;) (type 3) (param i32 i32)
    local.get 0
    global.set 8
    local.get 1
    global.set 7)
  (func (;99;) (type 13) (param i32 f64 i32 i32 i32 i32) (result i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 f64 i64 i64 i64)
    global.get 0
    i32.const 560
    i32.sub
    local.tee 11
    global.set 0
    local.get 11
    i32.const 0
    i32.store offset=44
    block  ;; label = @1
      local.get 1
      i64.reinterpret_f64
      local.tee 25
      i64.const 0
      i64.lt_s
      if  ;; label = @2
        i32.const 1
        local.set 16
        i32.const 1104
        local.set 20
        local.get 1
        f64.neg
        local.tee 1
        i64.reinterpret_f64
        local.set 25
        br 1 (;@1;)
      end
      local.get 4
      i32.const 2048
      i32.and
      if  ;; label = @2
        i32.const 1
        local.set 16
        i32.const 1107
        local.set 20
        br 1 (;@1;)
      end
      i32.const 1110
      i32.const 1105
      local.get 4
      i32.const 1
      i32.and
      local.tee 16
      select
      local.set 20
      local.get 16
      i32.eqz
      local.set 23
    end
    block  ;; label = @1
      local.get 25
      i64.const 9218868437227405312
      i64.and
      i64.const 9218868437227405312
      i64.eq
      if  ;; label = @2
        local.get 0
        i32.const 32
        local.get 2
        local.get 16
        i32.const 3
        i32.add
        local.tee 6
        local.get 4
        i32.const -65537
        i32.and
        call 20
        local.get 0
        local.get 20
        local.get 16
        call 19
        local.get 0
        i32.const 1242
        i32.const 1538
        local.get 5
        i32.const 32
        i32.and
        local.tee 3
        select
        i32.const 1279
        i32.const 1542
        local.get 3
        select
        local.get 1
        local.get 1
        f64.ne
        select
        i32.const 3
        call 19
        local.get 0
        i32.const 32
        local.get 2
        local.get 6
        local.get 4
        i32.const 8192
        i32.xor
        call 20
        local.get 2
        local.get 6
        local.get 2
        local.get 6
        i32.gt_s
        select
        local.set 13
        br 1 (;@1;)
      end
      local.get 11
      i32.const 16
      i32.add
      local.set 17
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            local.get 1
            local.get 11
            i32.const 44
            i32.add
            call 71
            local.tee 1
            local.get 1
            f64.add
            local.tee 1
            f64.const 0x0p+0 (;=0;)
            f64.ne
            if  ;; label = @5
              local.get 11
              local.get 11
              i32.load offset=44
              local.tee 6
              i32.const 1
              i32.sub
              i32.store offset=44
              local.get 5
              i32.const 32
              i32.or
              local.tee 21
              i32.const 97
              i32.ne
              br_if 1 (;@4;)
              br 3 (;@2;)
            end
            local.get 5
            i32.const 32
            i32.or
            local.tee 21
            i32.const 97
            i32.eq
            br_if 2 (;@2;)
            local.get 11
            i32.load offset=44
            local.set 12
            br 1 (;@3;)
          end
          local.get 11
          local.get 6
          i32.const 29
          i32.sub
          local.tee 12
          i32.store offset=44
          local.get 1
          f64.const 0x1p+28 (;=2.68435e+08;)
          f64.mul
          local.set 1
        end
        i32.const 6
        local.get 3
        local.get 3
        i32.const 0
        i32.lt_s
        select
        local.set 10
        local.get 11
        i32.const 48
        i32.add
        i32.const 288
        i32.const 0
        local.get 12
        i32.const 0
        i32.ge_s
        select
        i32.add
        local.tee 14
        local.set 7
        loop  ;; label = @3
          local.get 7
          local.get 1
          i32.trunc_sat_f64_u
          local.tee 3
          i32.store
          local.get 7
          i32.const 4
          i32.add
          local.set 7
          local.get 1
          local.get 3
          f64.convert_i32_u
          f64.sub
          f64.const 0x1.dcd65p+29 (;=1e+09;)
          f64.mul
          local.tee 1
          f64.const 0x0p+0 (;=0;)
          f64.ne
          br_if 0 (;@3;)
        end
        block  ;; label = @3
          local.get 12
          i32.const 0
          i32.le_s
          if  ;; label = @4
            local.get 12
            local.set 9
            local.get 7
            local.set 6
            local.get 14
            local.set 8
            br 1 (;@3;)
          end
          local.get 14
          local.set 8
          local.get 12
          local.set 9
          loop  ;; label = @4
            i32.const 29
            local.get 9
            local.get 9
            i32.const 29
            i32.ge_u
            select
            local.set 3
            block  ;; label = @5
              local.get 7
              i32.const 4
              i32.sub
              local.tee 6
              local.get 8
              i32.lt_u
              br_if 0 (;@5;)
              local.get 3
              i64.extend_i32_u
              local.set 27
              i64.const 0
              local.set 25
              loop  ;; label = @6
                local.get 6
                local.get 25
                i64.const 4294967295
                i64.and
                local.get 6
                i64.load32_u
                local.get 27
                i64.shl
                i64.add
                local.tee 26
                local.get 26
                i64.const 1000000000
                i64.div_u
                local.tee 25
                i64.const 1000000000
                i64.mul
                i64.sub
                i64.store32
                local.get 6
                i32.const 4
                i32.sub
                local.tee 6
                local.get 8
                i32.ge_u
                br_if 0 (;@6;)
              end
              local.get 26
              i64.const 1000000000
              i64.lt_u
              br_if 0 (;@5;)
              local.get 8
              i32.const 4
              i32.sub
              local.tee 8
              local.get 25
              i64.store32
            end
            loop  ;; label = @5
              local.get 8
              local.get 7
              local.tee 6
              i32.lt_u
              if  ;; label = @6
                local.get 6
                i32.const 4
                i32.sub
                local.tee 7
                i32.load
                i32.eqz
                br_if 1 (;@5;)
              end
            end
            local.get 11
            local.get 11
            i32.load offset=44
            local.get 3
            i32.sub
            local.tee 9
            i32.store offset=44
            local.get 6
            local.set 7
            local.get 9
            i32.const 0
            i32.gt_s
            br_if 0 (;@4;)
          end
        end
        local.get 9
        i32.const 0
        i32.lt_s
        if  ;; label = @3
          local.get 10
          i32.const 25
          i32.add
          i32.const 9
          i32.div_u
          i32.const 1
          i32.add
          local.set 18
          local.get 21
          i32.const 102
          i32.eq
          local.set 19
          loop  ;; label = @4
            i32.const 9
            i32.const 0
            local.get 9
            i32.sub
            local.tee 3
            local.get 3
            i32.const 9
            i32.ge_u
            select
            local.set 13
            block  ;; label = @5
              local.get 6
              local.get 8
              i32.le_u
              if  ;; label = @6
                local.get 8
                i32.load
                i32.eqz
                i32.const 2
                i32.shl
                local.set 7
                br 1 (;@5;)
              end
              i32.const 1000000000
              local.get 13
              i32.shr_u
              local.set 22
              i32.const -1
              local.get 13
              i32.shl
              i32.const -1
              i32.xor
              local.set 15
              i32.const 0
              local.set 9
              local.get 8
              local.set 7
              loop  ;; label = @6
                local.get 7
                local.get 7
                i32.load
                local.tee 3
                local.get 13
                i32.shr_u
                local.get 9
                i32.add
                i32.store
                local.get 3
                local.get 15
                i32.and
                local.get 22
                i32.mul
                local.set 9
                local.get 7
                i32.const 4
                i32.add
                local.tee 7
                local.get 6
                i32.lt_u
                br_if 0 (;@6;)
              end
              local.get 8
              i32.load
              i32.eqz
              i32.const 2
              i32.shl
              local.set 7
              local.get 9
              i32.eqz
              br_if 0 (;@5;)
              local.get 6
              local.get 9
              i32.store
              local.get 6
              i32.const 4
              i32.add
              local.set 6
            end
            local.get 11
            local.get 11
            i32.load offset=44
            local.get 13
            i32.add
            local.tee 9
            i32.store offset=44
            local.get 14
            local.get 7
            local.get 8
            i32.add
            local.tee 8
            local.get 19
            select
            local.tee 3
            local.get 18
            i32.const 2
            i32.shl
            i32.add
            local.get 6
            local.get 6
            local.get 3
            i32.sub
            i32.const 2
            i32.shr_s
            local.get 18
            i32.gt_s
            select
            local.set 6
            local.get 9
            i32.const 0
            i32.lt_s
            br_if 0 (;@4;)
          end
        end
        i32.const 0
        local.set 9
        block  ;; label = @3
          local.get 6
          local.get 8
          i32.le_u
          br_if 0 (;@3;)
          local.get 14
          local.get 8
          i32.sub
          i32.const 2
          i32.shr_s
          i32.const 9
          i32.mul
          local.set 9
          i32.const 10
          local.set 7
          local.get 8
          i32.load
          local.tee 3
          i32.const 10
          i32.lt_u
          br_if 0 (;@3;)
          loop  ;; label = @4
            local.get 9
            i32.const 1
            i32.add
            local.set 9
            local.get 3
            local.get 7
            i32.const 10
            i32.mul
            local.tee 7
            i32.ge_u
            br_if 0 (;@4;)
          end
        end
        local.get 10
        local.get 9
        i32.const 0
        local.get 21
        i32.const 102
        i32.ne
        select
        i32.sub
        local.get 21
        i32.const 103
        i32.eq
        local.get 10
        i32.const 0
        i32.ne
        i32.and
        i32.sub
        local.tee 3
        local.get 6
        local.get 14
        i32.sub
        i32.const 2
        i32.shr_s
        i32.const 9
        i32.mul
        i32.const 9
        i32.sub
        i32.lt_s
        if  ;; label = @3
          local.get 11
          i32.const 48
          i32.add
          i32.const -4092
          i32.const -3804
          local.get 12
          i32.const 0
          i32.lt_s
          select
          i32.add
          local.get 3
          i32.const 9216
          i32.add
          local.tee 12
          i32.const 9
          i32.div_s
          local.tee 3
          i32.const 2
          i32.shl
          i32.add
          local.set 13
          i32.const 10
          local.set 7
          local.get 12
          local.get 3
          i32.const 9
          i32.mul
          i32.sub
          local.tee 3
          i32.const 7
          i32.le_s
          if  ;; label = @4
            loop  ;; label = @5
              local.get 7
              i32.const 10
              i32.mul
              local.set 7
              local.get 3
              i32.const 1
              i32.add
              local.tee 3
              i32.const 8
              i32.ne
              br_if 0 (;@5;)
            end
          end
          block  ;; label = @4
            local.get 13
            i32.load
            local.tee 12
            local.get 12
            local.get 7
            i32.div_u
            local.tee 18
            local.get 7
            i32.mul
            i32.sub
            local.tee 15
            i32.eqz
            local.get 13
            i32.const 4
            i32.add
            local.tee 3
            local.get 6
            i32.eq
            i32.and
            br_if 0 (;@4;)
            block  ;; label = @5
              local.get 18
              i32.const 1
              i32.and
              i32.eqz
              if  ;; label = @6
                f64.const 0x1p+53 (;=9.0072e+15;)
                local.set 1
                local.get 7
                i32.const 1000000000
                i32.ne
                br_if 1 (;@5;)
                local.get 8
                local.get 13
                i32.ge_u
                br_if 1 (;@5;)
                local.get 13
                i32.const 4
                i32.sub
                i32.load8_u
                i32.const 1
                i32.and
                i32.eqz
                br_if 1 (;@5;)
              end
              f64.const 0x1.0000000000001p+53 (;=9.0072e+15;)
              local.set 1
            end
            f64.const 0x1p-1 (;=0.5;)
            f64.const 0x1p+0 (;=1;)
            f64.const 0x1.8p+0 (;=1.5;)
            local.get 3
            local.get 6
            i32.eq
            select
            f64.const 0x1.8p+0 (;=1.5;)
            local.get 15
            local.get 7
            i32.const 1
            i32.shr_u
            local.tee 3
            i32.eq
            select
            local.get 3
            local.get 15
            i32.gt_u
            select
            local.set 24
            block  ;; label = @5
              local.get 23
              br_if 0 (;@5;)
              local.get 20
              i32.load8_u
              i32.const 45
              i32.ne
              br_if 0 (;@5;)
              local.get 24
              f64.neg
              local.set 24
              local.get 1
              f64.neg
              local.set 1
            end
            local.get 13
            local.get 12
            local.get 15
            i32.sub
            local.tee 3
            i32.store
            local.get 1
            local.get 24
            f64.add
            local.get 1
            f64.eq
            br_if 0 (;@4;)
            local.get 13
            local.get 3
            local.get 7
            i32.add
            local.tee 3
            i32.store
            local.get 3
            i32.const 1000000000
            i32.ge_u
            if  ;; label = @5
              loop  ;; label = @6
                local.get 13
                i32.const 0
                i32.store
                local.get 8
                local.get 13
                i32.const 4
                i32.sub
                local.tee 13
                i32.gt_u
                if  ;; label = @7
                  local.get 8
                  i32.const 4
                  i32.sub
                  local.tee 8
                  i32.const 0
                  i32.store
                end
                local.get 13
                local.get 13
                i32.load
                i32.const 1
                i32.add
                local.tee 3
                i32.store
                local.get 3
                i32.const 999999999
                i32.gt_u
                br_if 0 (;@6;)
              end
            end
            local.get 14
            local.get 8
            i32.sub
            i32.const 2
            i32.shr_s
            i32.const 9
            i32.mul
            local.set 9
            i32.const 10
            local.set 7
            local.get 8
            i32.load
            local.tee 3
            i32.const 10
            i32.lt_u
            br_if 0 (;@4;)
            loop  ;; label = @5
              local.get 9
              i32.const 1
              i32.add
              local.set 9
              local.get 3
              local.get 7
              i32.const 10
              i32.mul
              local.tee 7
              i32.ge_u
              br_if 0 (;@5;)
            end
          end
          local.get 13
          i32.const 4
          i32.add
          local.tee 3
          local.get 6
          local.get 3
          local.get 6
          i32.lt_u
          select
          local.set 6
        end
        loop  ;; label = @3
          local.get 6
          local.tee 12
          local.get 8
          i32.le_u
          local.tee 7
          i32.eqz
          if  ;; label = @4
            local.get 6
            i32.const 4
            i32.sub
            local.tee 6
            i32.load
            i32.eqz
            br_if 1 (;@3;)
          end
        end
        block  ;; label = @3
          local.get 21
          i32.const 103
          i32.ne
          if  ;; label = @4
            local.get 4
            i32.const 8
            i32.and
            local.set 19
            br 1 (;@3;)
          end
          local.get 9
          i32.const -1
          i32.xor
          i32.const -1
          local.get 10
          i32.const 1
          local.get 10
          select
          local.tee 6
          local.get 9
          i32.gt_s
          local.get 9
          i32.const -5
          i32.gt_s
          i32.and
          local.tee 3
          select
          local.get 6
          i32.add
          local.set 10
          i32.const -1
          i32.const -2
          local.get 3
          select
          local.get 5
          i32.add
          local.set 5
          local.get 4
          i32.const 8
          i32.and
          local.tee 19
          br_if 0 (;@3;)
          i32.const -9
          local.set 6
          block  ;; label = @4
            local.get 7
            br_if 0 (;@4;)
            local.get 12
            i32.const 4
            i32.sub
            i32.load
            local.tee 15
            i32.eqz
            br_if 0 (;@4;)
            i32.const 10
            local.set 3
            i32.const 0
            local.set 6
            local.get 15
            i32.const 10
            i32.rem_u
            br_if 0 (;@4;)
            loop  ;; label = @5
              local.get 6
              local.tee 7
              i32.const 1
              i32.add
              local.set 6
              local.get 15
              local.get 3
              i32.const 10
              i32.mul
              local.tee 3
              i32.rem_u
              i32.eqz
              br_if 0 (;@5;)
            end
            local.get 7
            i32.const -1
            i32.xor
            local.set 6
          end
          local.get 12
          local.get 14
          i32.sub
          i32.const 2
          i32.shr_s
          i32.const 9
          i32.mul
          local.set 3
          local.get 5
          i32.const -33
          i32.and
          i32.const 70
          i32.eq
          if  ;; label = @4
            i32.const 0
            local.set 19
            local.get 10
            local.get 3
            local.get 6
            i32.add
            i32.const 9
            i32.sub
            local.tee 3
            i32.const 0
            local.get 3
            i32.const 0
            i32.gt_s
            select
            local.tee 3
            local.get 3
            local.get 10
            i32.gt_s
            select
            local.set 10
            br 1 (;@3;)
          end
          i32.const 0
          local.set 19
          local.get 10
          local.get 3
          local.get 9
          i32.add
          local.get 6
          i32.add
          i32.const 9
          i32.sub
          local.tee 3
          i32.const 0
          local.get 3
          i32.const 0
          i32.gt_s
          select
          local.tee 3
          local.get 3
          local.get 10
          i32.gt_s
          select
          local.set 10
        end
        i32.const -1
        local.set 13
        local.get 10
        i32.const 2147483645
        i32.const 2147483646
        local.get 10
        local.get 19
        i32.or
        local.tee 15
        select
        i32.gt_s
        br_if 1 (;@1;)
        local.get 10
        local.get 15
        i32.const 0
        i32.ne
        i32.add
        i32.const 1
        i32.add
        local.set 22
        block  ;; label = @3
          local.get 5
          i32.const -33
          i32.and
          local.tee 7
          i32.const 70
          i32.eq
          if  ;; label = @4
            local.get 9
            local.get 22
            i32.const 2147483647
            i32.xor
            i32.gt_s
            br_if 3 (;@1;)
            local.get 9
            i32.const 0
            local.get 9
            i32.const 0
            i32.gt_s
            select
            local.set 6
            br 1 (;@3;)
          end
          local.get 17
          local.get 9
          local.get 9
          i32.const 31
          i32.shr_s
          local.tee 3
          i32.xor
          local.get 3
          i32.sub
          i64.extend_i32_u
          local.get 17
          call 28
          local.tee 6
          i32.sub
          i32.const 1
          i32.le_s
          if  ;; label = @4
            loop  ;; label = @5
              local.get 6
              i32.const 1
              i32.sub
              local.tee 6
              i32.const 48
              i32.store8
              local.get 17
              local.get 6
              i32.sub
              i32.const 2
              i32.lt_s
              br_if 0 (;@5;)
            end
          end
          local.get 6
          i32.const 2
          i32.sub
          local.tee 18
          local.get 5
          i32.store8
          local.get 6
          i32.const 1
          i32.sub
          i32.const 45
          i32.const 43
          local.get 9
          i32.const 0
          i32.lt_s
          select
          i32.store8
          local.get 17
          local.get 18
          i32.sub
          local.tee 6
          local.get 22
          i32.const 2147483647
          i32.xor
          i32.gt_s
          br_if 2 (;@1;)
        end
        local.get 6
        local.get 22
        i32.add
        local.tee 3
        local.get 16
        i32.const 2147483647
        i32.xor
        i32.gt_s
        br_if 1 (;@1;)
        local.get 0
        i32.const 32
        local.get 2
        local.get 3
        local.get 16
        i32.add
        local.tee 9
        local.get 4
        call 20
        local.get 0
        local.get 20
        local.get 16
        call 19
        local.get 0
        i32.const 48
        local.get 2
        local.get 9
        local.get 4
        i32.const 65536
        i32.xor
        call 20
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              local.get 7
              i32.const 70
              i32.eq
              if  ;; label = @6
                local.get 11
                i32.const 16
                i32.add
                i32.const 9
                i32.or
                local.set 5
                local.get 14
                local.get 8
                local.get 8
                local.get 14
                i32.gt_u
                select
                local.tee 3
                local.set 8
                loop  ;; label = @7
                  local.get 8
                  i64.load32_u
                  local.get 5
                  call 28
                  local.set 6
                  block  ;; label = @8
                    local.get 3
                    local.get 8
                    i32.ne
                    if  ;; label = @9
                      local.get 6
                      local.get 11
                      i32.const 16
                      i32.add
                      i32.le_u
                      br_if 1 (;@8;)
                      loop  ;; label = @10
                        local.get 6
                        i32.const 1
                        i32.sub
                        local.tee 6
                        i32.const 48
                        i32.store8
                        local.get 6
                        local.get 11
                        i32.const 16
                        i32.add
                        i32.gt_u
                        br_if 0 (;@10;)
                      end
                      br 1 (;@8;)
                    end
                    local.get 5
                    local.get 6
                    i32.ne
                    br_if 0 (;@8;)
                    local.get 6
                    i32.const 1
                    i32.sub
                    local.tee 6
                    i32.const 48
                    i32.store8
                  end
                  local.get 0
                  local.get 6
                  local.get 5
                  local.get 6
                  i32.sub
                  call 19
                  local.get 8
                  i32.const 4
                  i32.add
                  local.tee 8
                  local.get 14
                  i32.le_u
                  br_if 0 (;@7;)
                end
                local.get 15
                if  ;; label = @7
                  local.get 0
                  i32.const 1729
                  i32.const 1
                  call 19
                end
                local.get 8
                local.get 12
                i32.ge_u
                br_if 1 (;@5;)
                local.get 10
                i32.const 0
                i32.le_s
                br_if 1 (;@5;)
                loop  ;; label = @7
                  local.get 8
                  i64.load32_u
                  local.get 5
                  call 28
                  local.tee 6
                  local.get 11
                  i32.const 16
                  i32.add
                  i32.gt_u
                  if  ;; label = @8
                    loop  ;; label = @9
                      local.get 6
                      i32.const 1
                      i32.sub
                      local.tee 6
                      i32.const 48
                      i32.store8
                      local.get 6
                      local.get 11
                      i32.const 16
                      i32.add
                      i32.gt_u
                      br_if 0 (;@9;)
                    end
                  end
                  local.get 0
                  local.get 6
                  i32.const 9
                  local.get 10
                  local.get 10
                  i32.const 9
                  i32.ge_s
                  select
                  call 19
                  local.get 10
                  i32.const 9
                  i32.sub
                  local.set 6
                  local.get 8
                  i32.const 4
                  i32.add
                  local.tee 8
                  local.get 12
                  i32.ge_u
                  br_if 3 (;@4;)
                  local.get 10
                  i32.const 9
                  i32.gt_s
                  local.get 6
                  local.set 10
                  br_if 0 (;@7;)
                end
                br 2 (;@4;)
              end
              block  ;; label = @6
                local.get 10
                i32.const 0
                i32.lt_s
                br_if 0 (;@6;)
                local.get 12
                local.get 8
                i32.const 4
                i32.add
                local.get 8
                local.get 12
                i32.lt_u
                select
                local.set 3
                local.get 11
                i32.const 16
                i32.add
                i32.const 9
                i32.or
                local.set 12
                local.get 8
                local.set 7
                loop  ;; label = @7
                  local.get 12
                  local.get 7
                  i64.load32_u
                  local.get 12
                  call 28
                  local.tee 6
                  i32.eq
                  if  ;; label = @8
                    local.get 6
                    i32.const 1
                    i32.sub
                    local.tee 6
                    i32.const 48
                    i32.store8
                  end
                  block  ;; label = @8
                    local.get 7
                    local.get 8
                    i32.ne
                    if  ;; label = @9
                      local.get 6
                      local.get 11
                      i32.const 16
                      i32.add
                      i32.le_u
                      br_if 1 (;@8;)
                      loop  ;; label = @10
                        local.get 6
                        i32.const 1
                        i32.sub
                        local.tee 6
                        i32.const 48
                        i32.store8
                        local.get 6
                        local.get 11
                        i32.const 16
                        i32.add
                        i32.gt_u
                        br_if 0 (;@10;)
                      end
                      br 1 (;@8;)
                    end
                    local.get 0
                    local.get 6
                    i32.const 1
                    call 19
                    local.get 6
                    i32.const 1
                    i32.add
                    local.set 6
                    local.get 10
                    local.get 19
                    i32.or
                    i32.eqz
                    br_if 0 (;@8;)
                    local.get 0
                    i32.const 1729
                    i32.const 1
                    call 19
                  end
                  local.get 0
                  local.get 6
                  local.get 12
                  local.get 6
                  i32.sub
                  local.tee 5
                  local.get 10
                  local.get 5
                  local.get 10
                  i32.lt_s
                  select
                  call 19
                  local.get 10
                  local.get 5
                  i32.sub
                  local.set 10
                  local.get 7
                  i32.const 4
                  i32.add
                  local.tee 7
                  local.get 3
                  i32.ge_u
                  br_if 1 (;@6;)
                  local.get 10
                  i32.const 0
                  i32.ge_s
                  br_if 0 (;@7;)
                end
              end
              local.get 0
              i32.const 48
              local.get 10
              i32.const 18
              i32.add
              i32.const 18
              i32.const 0
              call 20
              local.get 0
              local.get 18
              local.get 17
              local.get 18
              i32.sub
              call 19
              br 2 (;@3;)
            end
            local.get 10
            local.set 6
          end
          local.get 0
          i32.const 48
          local.get 6
          i32.const 9
          i32.add
          i32.const 9
          i32.const 0
          call 20
        end
        local.get 0
        i32.const 32
        local.get 2
        local.get 9
        local.get 4
        i32.const 8192
        i32.xor
        call 20
        local.get 2
        local.get 9
        local.get 2
        local.get 9
        i32.gt_s
        select
        local.set 13
        br 1 (;@1;)
      end
      local.get 20
      local.get 5
      i32.const 26
      i32.shl
      i32.const 31
      i32.shr_s
      i32.const 9
      i32.and
      i32.add
      local.set 9
      block  ;; label = @2
        local.get 3
        i32.const 11
        i32.gt_u
        br_if 0 (;@2;)
        i32.const 12
        local.get 3
        i32.sub
        local.set 6
        f64.const 0x1p+4 (;=16;)
        local.set 24
        loop  ;; label = @3
          local.get 24
          f64.const 0x1p+4 (;=16;)
          f64.mul
          local.set 24
          local.get 6
          i32.const 1
          i32.sub
          local.tee 6
          br_if 0 (;@3;)
        end
        local.get 9
        i32.load8_u
        i32.const 45
        i32.eq
        if  ;; label = @3
          local.get 24
          local.get 1
          f64.neg
          local.get 24
          f64.sub
          f64.add
          f64.neg
          local.set 1
          br 1 (;@2;)
        end
        local.get 1
        local.get 24
        f64.add
        local.get 24
        f64.sub
        local.set 1
      end
      local.get 17
      local.get 11
      i32.load offset=44
      local.tee 7
      local.get 7
      i32.const 31
      i32.shr_s
      local.tee 6
      i32.xor
      local.get 6
      i32.sub
      i64.extend_i32_u
      local.get 17
      call 28
      local.tee 6
      i32.eq
      if  ;; label = @2
        local.get 6
        i32.const 1
        i32.sub
        local.tee 6
        i32.const 48
        i32.store8
        local.get 11
        i32.load offset=44
        local.set 7
      end
      local.get 16
      i32.const 2
      i32.or
      local.set 10
      local.get 5
      i32.const 32
      i32.and
      local.set 12
      local.get 6
      i32.const 2
      i32.sub
      local.tee 14
      local.get 5
      i32.const 15
      i32.add
      i32.store8
      local.get 6
      i32.const 1
      i32.sub
      i32.const 45
      i32.const 43
      local.get 7
      i32.const 0
      i32.lt_s
      select
      i32.store8
      local.get 4
      i32.const 8
      i32.and
      i32.eqz
      local.get 3
      i32.const 0
      i32.le_s
      i32.and
      local.set 8
      local.get 11
      i32.const 16
      i32.add
      local.set 7
      loop  ;; label = @2
        local.get 7
        local.tee 5
        local.get 1
        i32.trunc_sat_f64_s
        local.tee 6
        i32.const 2288
        i32.add
        i32.load8_u
        local.get 12
        i32.or
        i32.store8
        local.get 1
        local.get 6
        f64.convert_i32_s
        f64.sub
        f64.const 0x1p+4 (;=16;)
        f64.mul
        local.set 1
        block  ;; label = @3
          local.get 7
          i32.const 1
          i32.add
          local.tee 7
          local.get 11
          i32.const 16
          i32.add
          i32.sub
          i32.const 1
          i32.ne
          br_if 0 (;@3;)
          local.get 1
          f64.const 0x0p+0 (;=0;)
          f64.eq
          local.get 8
          i32.and
          br_if 0 (;@3;)
          local.get 5
          i32.const 46
          i32.store8 offset=1
          local.get 5
          i32.const 2
          i32.add
          local.set 7
        end
        local.get 1
        f64.const 0x0p+0 (;=0;)
        f64.ne
        br_if 0 (;@2;)
      end
      i32.const -1
      local.set 13
      local.get 3
      i32.const 2147483645
      local.get 10
      local.get 17
      local.get 14
      i32.sub
      local.tee 8
      i32.add
      local.tee 6
      i32.sub
      i32.gt_s
      br_if 0 (;@1;)
      local.get 0
      i32.const 32
      local.get 2
      local.get 6
      local.get 3
      i32.const 2
      i32.add
      local.get 7
      local.get 11
      i32.const 16
      i32.add
      local.tee 5
      i32.sub
      local.tee 7
      local.get 7
      i32.const 2
      i32.sub
      local.get 3
      i32.lt_s
      select
      local.get 7
      local.get 3
      select
      local.tee 3
      i32.add
      local.tee 6
      local.get 4
      call 20
      local.get 0
      local.get 9
      local.get 10
      call 19
      local.get 0
      i32.const 48
      local.get 2
      local.get 6
      local.get 4
      i32.const 65536
      i32.xor
      call 20
      local.get 0
      local.get 5
      local.get 7
      call 19
      local.get 0
      i32.const 48
      local.get 3
      local.get 7
      i32.sub
      i32.const 0
      i32.const 0
      call 20
      local.get 0
      local.get 14
      local.get 8
      call 19
      local.get 0
      i32.const 32
      local.get 2
      local.get 6
      local.get 4
      i32.const 8192
      i32.xor
      call 20
      local.get 2
      local.get 6
      local.get 2
      local.get 6
      i32.gt_s
      select
      local.set 13
    end
    local.get 11
    i32.const 560
    i32.add
    global.set 0
    local.get 13)
  (func (;100;) (type 2)
    (local i32)
    global.get 3
    i32.load offset=120
    local.tee 0
    i32.const 1
    i32.atomic.store
    local.get 0
    call 38
    local.get 0
    i32.const 1
    i32.const 0
    i32.atomic.rmw.cmpxchg
    drop)
  (func (;101;) (type 21) (param i32 i64 i32) (result i64)
    i64.const 0)
  (func (;102;) (type 1) (param i32) (result i32)
    i32.const 0)
  (func (;103;) (type 5) (param i32 i32 i32) (result i32)
    (local i32 i32 i32 i32 i32 i32 i32)
    global.get 0
    i32.const 32
    i32.sub
    local.tee 3
    global.set 0
    local.get 3
    local.get 0
    i32.load offset=28
    local.tee 4
    i32.store offset=16
    local.get 0
    i32.load offset=20
    local.set 5
    local.get 3
    local.get 2
    i32.store offset=28
    local.get 3
    local.get 1
    i32.store offset=24
    local.get 3
    local.get 5
    local.get 4
    i32.sub
    local.tee 1
    i32.store offset=20
    local.get 1
    local.get 2
    i32.add
    local.set 5
    i32.const 2
    local.set 7
    block (result i32)  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            local.get 0
            i32.load offset=60
            local.get 3
            i32.const 16
            i32.add
            local.tee 1
            i32.const 2
            local.get 3
            i32.const 12
            i32.add
            call 2
            local.tee 4
            if (result i32)  ;; label = @5
              global.get 1
              local.get 4
              i32.store
              i32.const -1
            else
              i32.const 0
            end
            if  ;; label = @5
              local.get 1
              local.set 4
              br 1 (;@4;)
            end
            loop  ;; label = @5
              local.get 5
              local.get 3
              i32.load offset=12
              local.tee 6
              i32.eq
              br_if 2 (;@3;)
              local.get 6
              i32.const 0
              i32.lt_s
              if  ;; label = @6
                local.get 1
                local.set 4
                br 4 (;@2;)
              end
              local.get 1
              local.get 6
              local.get 1
              i32.load offset=4
              local.tee 8
              i32.gt_u
              local.tee 9
              i32.const 3
              i32.shl
              i32.add
              local.tee 4
              local.get 6
              local.get 8
              i32.const 0
              local.get 9
              select
              i32.sub
              local.tee 8
              local.get 4
              i32.load
              i32.add
              i32.store
              local.get 1
              i32.const 12
              i32.const 4
              local.get 9
              select
              i32.add
              local.tee 1
              local.get 1
              i32.load
              local.get 8
              i32.sub
              i32.store
              local.get 5
              local.get 6
              i32.sub
              local.set 5
              local.get 0
              i32.load offset=60
              local.get 4
              local.tee 1
              local.get 7
              local.get 9
              i32.sub
              local.tee 7
              local.get 3
              i32.const 12
              i32.add
              call 2
              local.tee 6
              if (result i32)  ;; label = @6
                global.get 1
                local.get 6
                i32.store
                i32.const -1
              else
                i32.const 0
              end
              i32.eqz
              br_if 0 (;@5;)
            end
          end
          local.get 5
          i32.const -1
          i32.ne
          br_if 1 (;@2;)
        end
        local.get 0
        local.get 0
        i32.load offset=44
        local.tee 1
        i32.store offset=28
        local.get 0
        local.get 1
        i32.store offset=20
        local.get 0
        local.get 1
        local.get 0
        i32.load offset=48
        i32.add
        i32.store offset=16
        local.get 2
        br 1 (;@1;)
      end
      local.get 0
      i32.const 0
      i32.store offset=28
      local.get 0
      i64.const 0
      i64.store offset=16
      local.get 0
      local.get 0
      i32.load
      i32.const 32
      i32.or
      i32.store
      i32.const 0
      local.get 7
      i32.const 2
      i32.eq
      br_if 0 (;@1;)
      drop
      local.get 2
      local.get 4
      i32.load offset=4
      i32.sub
    end
    local.get 3
    i32.const 32
    i32.add
    global.set 0)
  (func (;104;) (type 9) (result i32)
    global.get 3)
  (func (;105;) (type 0) (param i32)
    local.get 0
    i32.const 0
    i32.atomic.rmw.xchg
    i32.const 3
    i32.eq
    if  ;; label = @1
      local.get 0
      i32.const 2147483647
      call 21
    end)
  (func (;106;) (type 0) (param i32)
    (local i32 i32 i32 i32 i32 i32)
    global.get 3
    local.tee 1
    i32.const 1
    i32.store8 offset=40
    local.get 1
    local.get 0
    i32.store offset=64
    local.get 1
    i32.const 0
    i32.store8 offset=41
    local.get 1
    i32.const 1
    i32.atomic.rmw.sub offset=124
    i32.const 1
    i32.sub
    local.tee 0
    if  ;; label = @1
      local.get 1
      i32.const 124
      i32.add
      local.set 2
      loop  ;; label = @2
        local.get 2
        local.get 0
        f64.const inf (;=inf;)
        call 30
        drop
        local.get 2
        i32.atomic.load
        local.tee 0
        br_if 0 (;@2;)
      end
    end
    local.get 1
    i32.load offset=120
    call 94
    block  ;; label = @1
      local.get 1
      i32.load offset=120
      local.tee 0
      i32.atomic.load
      i32.eqz
      if  ;; label = @2
        local.get 0
        call 68
        br 1 (;@1;)
      end
      i32.const 2812
      call 17
      drop
      local.get 0
      i32.const 2808
      i32.store offset=56
      local.get 0
      i32.const 2860
      i32.load
      i32.store offset=52
      i32.const 2860
      local.get 0
      i32.store
      local.get 0
      i32.load offset=52
      local.get 0
      i32.store offset=56
      i32.const 2812
      call 16
      drop
    end
    global.get 3
    local.set 2
    loop  ;; label = @1
      local.get 2
      i32.load offset=68
      local.tee 0
      if  ;; label = @2
        local.get 0
        i32.load offset=4
        local.get 0
        i32.load
        local.get 2
        local.get 0
        i32.load offset=8
        i32.store offset=68
        call_indirect (type 0)
        br 1 (;@1;)
      end
    end
    i32.const 0
    local.set 2
    block  ;; label = @1
      global.get 3
      local.tee 0
      i32.load8_u offset=42
      i32.const 1
      i32.and
      i32.eqz
      br_if 0 (;@1;)
      loop  ;; label = @2
        call 75
        local.get 0
        local.get 0
        i32.load8_u offset=42
        i32.const 254
        i32.and
        i32.store8 offset=42
        i32.const 0
        local.set 3
        loop  ;; label = @3
          local.get 3
          i32.const 2
          i32.shl
          local.tee 5
          i32.const 3888
          i32.add
          i32.load
          local.set 4
          local.get 0
          i32.load offset=72
          local.get 5
          i32.add
          local.tee 6
          i32.load
          local.set 5
          local.get 6
          i32.const 0
          i32.store
          block  ;; label = @4
            local.get 5
            i32.eqz
            br_if 0 (;@4;)
            local.get 4
            i32.eqz
            br_if 0 (;@4;)
            local.get 4
            i32.const 15
            i32.eq
            br_if 0 (;@4;)
            call 43
            local.get 5
            local.get 4
            call_indirect (type 0)
            call 75
          end
          local.get 3
          i32.const 1
          i32.add
          local.tee 3
          i32.const 128
          i32.ne
          br_if 0 (;@3;)
        end
        call 43
        local.get 0
        i32.load8_u offset=42
        i32.const 1
        i32.and
        i32.eqz
        br_if 1 (;@1;)
        local.get 2
        i32.const 3
        i32.lt_u
        local.get 2
        i32.const 1
        i32.add
        local.set 2
        br_if 0 (;@2;)
      end
    end
    i32.const 3104
    i32.const 3104
    i32.load
    i32.const 1
    i32.sub
    local.tee 0
    i32.store
    local.get 0
    i32.eqz
    if  ;; label = @1
      i32.const 3103
      i32.const 0
      i32.store8
    end
    call 47
    local.get 1
    i32.load offset=12
    local.tee 0
    local.get 1
    i32.load offset=8
    local.tee 2
    i32.store offset=8
    local.get 2
    local.get 0
    i32.store offset=12
    local.get 1
    local.get 1
    i32.store offset=8
    local.get 1
    local.get 1
    i32.store offset=12
    call 46
    global.get 5
    i32.eqz
    if  ;; label = @1
      i32.const 0
      global.set 3
      i32.const 0
      global.set 4
      i32.const 0
      global.set 5
      i32.const 1
      global.set 6
      local.get 1
      i32.const 32
      i32.add
      local.tee 0
      i32.const 2
      i32.const 1
      i32.atomic.rmw.cmpxchg
      i32.const 3
      i32.eq
      if  ;; label = @2
        local.get 1
        call 3
        return
      end
      local.get 0
      i32.const 0
      i32.atomic.store
      local.get 0
      i32.const 1
      call 21
      return
    end
    i32.const 0
    call 15
    unreachable)
  (func (;107;) (type 0) (param i32)
    local.get 0
    i32.load offset=44
    local.tee 0
    i32.const 0
    i32.const 132
    memory.fill
    local.get 0
    call 18)
  (func (;108;) (type 9) (result i32)
    (local i32 i32 i32)
    global.get 1
    local.set 0
    global.get 3
    local.tee 2
    i32.load offset=116
    local.tee 1
    if  ;; label = @1
      local.get 2
      i32.const 0
      i32.store offset=116
      local.get 1
      global.set 1
      local.get 1
      i64.const 0
      i64.store align=1
      local.get 1
      return
    end
    global.get 2
    i32.const 1
    local.get 0
    select
    if  ;; label = @1
      i32.const 1
      global.set 2
      i32.const 8
      call 23
      local.set 0
    end
    local.get 0
    global.set 1
    local.get 0
    i64.const 0
    i64.store align=1
    local.get 0)
  (func (;109;) (type 2)
    i32.const 3288
    global.get 3
    i32.atomic.store)
  (func (;110;) (type 0) (param i32)
    (local i32 i32)
    i32.const 3092
    i32.load
    i32.const 0
    call 29
    local.get 0
    local.set 1
    loop  ;; label = @1
      local.get 1
      i32.load offset=88
      local.get 1
      call 82
      local.tee 1
      local.get 0
      i32.ne
      br_if 0 (;@1;)
    end)
  (func (;111;) (type 0) (param i32)
    local.get 0
    local.get 0
    i32.load
    local.get 0
    i32.load offset=4
    local.get 0
    i32.load offset=8
    local.get 0
    i32.load offset=12
    local.get 0
    i32.load offset=16
    call 10
    f64.store offset=24
    local.get 0
    i32.load8_u offset=32
    i32.const 1
    i32.eq
    if  ;; label = @1
      local.get 0
      i32.load offset=16
      call 18
      local.get 0
      call 18
    end)
  (func (;112;) (type 12) (param i32 i32 i32 i32 i32) (result f64)
    (local i32 i32 i32 f64)
    global.get 0
    i32.const 48
    i32.sub
    local.tee 5
    global.set 0
    local.get 5
    local.get 1
    i32.store offset=12
    local.get 5
    local.get 0
    i32.store offset=8
    local.get 5
    i32.const 0
    i32.store offset=44 align=1
    local.get 5
    i32.const 0
    i32.store offset=41 align=1
    local.get 5
    i32.const 0
    i32.store8 offset=40
    local.get 5
    i64.const 0
    i64.store offset=32
    local.get 5
    i32.const 0
    i32.store offset=28
    local.get 5
    local.get 3
    i32.store offset=24
    local.get 5
    local.get 2
    i32.store offset=20
    local.get 5
    global.get 3
    i32.store offset=16
    block (result f64)  ;; label = @1
      local.get 4
      if  ;; label = @2
        global.get 0
        i32.const 16
        i32.sub
        local.tee 3
        global.set 0
        local.get 3
        local.get 5
        i32.const 8
        i32.add
        i32.store offset=12
        local.get 3
        i32.const 0
        i32.store offset=8
        local.get 3
        i32.const 14
        i32.store offset=4
        local.get 3
        i32.const 4
        i32.add
        local.set 4
        global.get 0
        i32.const 128
        i32.sub
        local.tee 0
        global.set 0
        global.get 0
        i32.const 96
        i32.sub
        local.tee 1
        global.set 0
        block  ;; label = @3
          i32.const 3096
          i32.load
          i32.const 2
          i32.eq
          if  ;; label = @4
            global.get 0
            i32.const 16
            i32.sub
            i32.const 0
            i32.store offset=12
            br 1 (;@3;)
          end
          global.get 0
          i32.const 16
          i32.sub
          local.tee 2
          global.set 0
          loop  ;; label = @4
            block  ;; label = @5
              block  ;; label = @6
                block  ;; label = @7
                  block  ;; label = @8
                    block  ;; label = @9
                      i32.const 3096
                      i32.const 0
                      i32.const 1
                      i32.atomic.rmw.cmpxchg
                      br_table 0 (;@9;) 2 (;@7;) 1 (;@8;) 3 (;@6;) 5 (;@4;)
                    end
                    local.get 2
                    i32.const 4
                    i32.add
                    local.tee 6
                    i32.const 3096
                    i32.store offset=4
                    local.get 2
                    i32.const 16
                    i32.store offset=4
                    local.get 2
                    global.get 3
                    local.tee 7
                    i32.load offset=68
                    i32.store offset=12
                    local.get 7
                    local.get 6
                    i32.store offset=68
                    call 81
                    global.get 3
                    local.get 2
                    i32.load offset=12
                    i32.store offset=68
                    i32.const 3096
                    i32.const 2
                    i32.atomic.rmw.xchg
                    i32.const 3
                    i32.ne
                    br_if 0 (;@8;)
                    i32.const 3096
                    i32.const 2147483647
                    call 21
                  end
                  local.get 2
                  i32.const 16
                  i32.add
                  global.set 0
                  br 2 (;@5;)
                end
                i32.const 3096
                i32.const 1
                i32.const 3
                i32.atomic.rmw.cmpxchg
                drop
              end
              i32.const 3096
              i32.const 0
              i32.const 3
              call 25
              br 1 (;@4;)
            end
          end
        end
        local.get 1
        i32.const 0
        i32.const 80
        memory.fill
        local.get 1
        i32.const 13
        i32.store offset=92
        local.get 1
        local.get 4
        i32.store offset=88
        local.get 1
        i32.const 0
        i32.store offset=84
        local.get 1
        i32.const 0
        i32.store offset=80
        local.get 0
        i32.const 32
        i32.add
        local.tee 2
        local.get 1
        i32.load offset=92
        i32.store
        local.get 2
        local.get 1
        i32.load offset=88
        i32.store offset=4
        local.get 2
        local.get 1
        i32.load offset=84
        i32.store offset=8
        local.get 2
        local.get 1
        i32.load offset=80
        i32.store offset=12
        local.get 2
        i32.const 16
        i32.add
        local.get 1
        i32.const 80
        memory.copy
        local.get 1
        i32.const 96
        i32.add
        global.set 0
        local.get 0
        i32.const 8
        i32.store offset=24
        local.get 0
        i32.const 9
        i32.store offset=20
        local.get 0
        local.get 2
        i32.store offset=28
        local.get 0
        local.get 2
        i32.store offset=16
        local.get 0
        local.get 0
        i64.load offset=20 align=4
        i64.store offset=8
        i32.const 3056
        i32.const 3156
        local.get 0
        i32.const 8
        i32.add
        call 34
        if (result i32)  ;; label = @3
          local.get 0
          i32.const 48
          i32.add
          local.tee 1
          call 17
          drop
          local.get 0
          i32.load offset=44
          i32.eqz
          if  ;; label = @4
            local.get 0
            i32.const 72
            i32.add
            local.set 2
            loop  ;; label = @5
              local.get 2
              local.get 1
              call 88
              local.get 0
              i32.load offset=44
              i32.eqz
              br_if 0 (;@5;)
            end
          end
          local.get 1
          call 16
          drop
          local.get 0
          i32.load offset=44
          i32.const 1
          i32.eq
        else
          i32.const 0
        end
        local.set 1
        local.get 0
        i32.const 32
        i32.add
        call 83
        local.get 0
        i32.const 128
        i32.add
        global.set 0
        local.get 3
        i32.const 16
        i32.add
        global.set 0
        local.get 5
        f64.load offset=32
        f64.const 0x0p+0 (;=0;)
        local.get 1
        select
        br 1 (;@1;)
      end
      i32.const 40
      call 23
      local.tee 1
      local.get 5
      i32.const 8
      i32.add
      i32.const 40
      memory.copy
      local.get 1
      i32.const 1
      i32.store8 offset=32
      local.get 1
      local.get 2
      i32.const 3
      i32.shl
      local.tee 0
      call 23
      local.tee 2
      i32.store offset=16
      local.get 0
      if (result i32)  ;; label = @2
        local.get 2
        local.get 3
        local.get 0
        memory.copy
        i32.const 0
      else
        local.get 2
      end
      drop
      global.get 0
      i32.const 32
      i32.sub
      local.tee 0
      global.set 0
      local.get 0
      local.get 1
      i32.store offset=28
      local.get 0
      local.get 1
      i32.store offset=16
      local.get 0
      i32.const 0
      i32.store offset=24
      local.get 0
      i32.const 14
      i32.store offset=20
      local.get 0
      local.get 0
      i64.load offset=20 align=4
      i64.store offset=8
      i32.const 3056
      i32.const 3156
      local.get 0
      i32.const 8
      i32.add
      call 34
      drop
      local.get 0
      i32.const 32
      i32.add
      global.set 0
      f64.const 0x0p+0 (;=0;)
    end
    local.get 5
    i32.const 48
    i32.add
    global.set 0)
  (func (;113;) (type 3) (param i32 i32)
    (local i32 i32)
    local.get 1
    i32.load offset=8
    local.get 1
    i32.load
    call_indirect (type 0)
    global.get 0
    i32.const 32
    i32.sub
    local.tee 1
    global.set 0
    block  ;; label = @1
      local.get 0
      i32.load offset=8
      i32.eqz
      if  ;; label = @2
        local.get 0
        i32.const 16
        i32.add
        local.tee 2
        call 17
        drop
        local.get 0
        i32.const 1
        i32.store offset=12
        local.get 0
        call 84
        local.get 2
        call 16
        drop
        local.get 0
        i32.const 40
        i32.add
        call 86
        br 1 (;@1;)
      end
      local.get 0
      call 84
      local.get 0
      i32.load offset=16
      local.set 2
      local.get 0
      i32.load offset=12
      local.get 1
      local.get 0
      i32.store offset=28
      local.get 1
      local.get 0
      i32.store offset=16
      local.get 1
      i32.const 6
      i32.store offset=24
      local.get 1
      i32.const 7
      i32.store offset=20
      local.get 1
      local.get 1
      i64.load offset=20 align=4
      i64.store offset=8
      local.get 2
      local.get 1
      i32.const 8
      i32.add
      call 34
      br_if 0 (;@1;)
      local.get 0
      call 31
    end
    local.get 1
    i32.const 32
    i32.add
    global.set 0)
  (func (;114;) (type 0) (param i32)
    local.get 0
    i32.load offset=4
    local.get 0
    i32.load offset=24
    call_indirect (type 0)
    local.get 0
    call 31)
  (func (;115;) (type 4) (param i32 i32) (result i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 f64 f64)
    global.get 0
    i32.const 48
    i32.sub
    local.tee 0
    global.set 0
    local.get 0
    i32.const 32
    call 26
    local.tee 1
    i32.store offset=36
    local.get 0
    local.get 1
    i32.const 32
    i32.add
    local.tee 2
    i32.store offset=44
    local.get 1
    i64.const 0
    i64.store offset=24
    local.get 1
    i64.const 0
    i64.store offset=16
    local.get 1
    i64.const 0
    i64.store offset=8
    local.get 1
    i64.const 0
    i64.store
    local.get 0
    local.get 2
    i32.store offset=40
    local.get 0
    i32.const 36
    i32.add
    local.set 8
    i32.const 0
    local.set 1
    global.get 0
    i32.const 32
    i32.sub
    local.tee 3
    global.set 0
    local.get 3
    i32.const 0
    i32.store offset=28
    local.get 3
    i64.const 0
    i64.store offset=20 align=4
    local.get 3
    i32.const 0
    i32.store offset=16
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            loop  ;; label = @5
              block  ;; label = @6
                block  ;; label = @7
                  local.get 3
                  i32.load offset=28
                  local.tee 2
                  local.get 1
                  i32.gt_u
                  if  ;; label = @8
                    i32.const 4
                    call 26
                    call 54
                    local.set 4
                    i32.const 16
                    call 26
                    local.tee 2
                    local.get 5
                    i32.store offset=8
                    local.get 2
                    local.get 8
                    i32.store offset=4
                    local.get 2
                    local.get 4
                    i32.store
                    local.get 2
                    local.get 3
                    i32.const 16
                    i32.add
                    i32.store offset=12
                    local.get 1
                    local.get 2
                    call 79
                    br_if 2 (;@6;)
                    local.get 1
                    i32.const 4
                    i32.add
                    local.set 1
                    br 1 (;@7;)
                  end
                  local.get 1
                  local.get 3
                  i32.load offset=20
                  local.tee 4
                  i32.sub
                  local.tee 6
                  i32.const 2
                  i32.shr_s
                  i32.const 1
                  i32.add
                  local.tee 1
                  i32.const 1073741824
                  i32.ge_u
                  br_if 3 (;@4;)
                  i32.const 1073741823
                  local.get 2
                  local.get 4
                  i32.sub
                  local.tee 2
                  i32.const 1
                  i32.shr_s
                  local.tee 4
                  local.get 1
                  local.get 1
                  local.get 4
                  i32.lt_u
                  select
                  local.get 2
                  i32.const 2147483644
                  i32.ge_u
                  select
                  local.tee 7
                  if (result i32)  ;; label = @8
                    local.get 7
                    i32.const 1073741824
                    i32.ge_u
                    br_if 5 (;@3;)
                    local.get 7
                    i32.const 2
                    i32.shl
                    call 26
                  else
                    i32.const 0
                  end
                  local.set 9
                  i32.const 4
                  call 26
                  call 54
                  local.set 2
                  i32.const 16
                  call 26
                  local.tee 1
                  local.get 5
                  i32.store offset=8
                  local.get 1
                  local.get 8
                  i32.store offset=4
                  local.get 1
                  local.get 2
                  i32.store
                  local.get 1
                  local.get 3
                  i32.const 16
                  i32.add
                  i32.store offset=12
                  local.get 6
                  local.get 9
                  i32.add
                  local.tee 10
                  local.get 1
                  call 79
                  br_if 5 (;@2;)
                  local.get 3
                  i32.load offset=20
                  local.tee 2
                  local.set 1
                  local.get 10
                  local.get 2
                  local.get 3
                  i32.load offset=24
                  local.tee 6
                  i32.sub
                  i32.add
                  local.tee 11
                  local.set 4
                  local.get 2
                  local.get 6
                  i32.ne
                  if  ;; label = @8
                    loop  ;; label = @9
                      local.get 4
                      local.get 1
                      i32.load
                      i32.store
                      local.get 1
                      i32.const 0
                      i32.store
                      local.get 4
                      i32.const 4
                      i32.add
                      local.set 4
                      local.get 1
                      i32.const 4
                      i32.add
                      local.tee 1
                      local.get 6
                      i32.ne
                      br_if 0 (;@9;)
                    end
                    local.get 2
                    local.set 1
                    loop  ;; label = @9
                      local.get 1
                      call 56
                      i32.const 4
                      i32.add
                      local.tee 1
                      local.get 6
                      i32.ne
                      br_if 0 (;@9;)
                    end
                  end
                  local.get 10
                  i32.const 4
                  i32.add
                  local.set 1
                  local.get 3
                  local.get 11
                  i32.store offset=20
                  local.get 3
                  i32.load offset=28
                  drop
                  local.get 3
                  local.get 9
                  local.get 7
                  i32.const 2
                  i32.shl
                  i32.add
                  i32.store offset=28
                  local.get 2
                  i32.eqz
                  br_if 0 (;@7;)
                  local.get 2
                  call 18
                end
                local.get 3
                local.get 1
                i32.store offset=24
                local.get 5
                i32.const 1
                i32.add
                local.tee 5
                i32.const 4
                i32.ne
                br_if 1 (;@5;)
                br 5 (;@1;)
              end
            end
            call 22
            unreachable
          end
          i32.const 8
          call 49
          local.tee 0
          i32.const 2580
          i32.store
          local.get 0
          i32.const 2692
          i32.store
          i32.const 1156
          call 73
          local.tee 1
          i32.const 13
          i32.add
          call 26
          local.tee 2
          i32.const 0
          i32.store offset=8
          local.get 2
          local.get 1
          i32.store offset=4
          local.get 2
          local.get 1
          i32.store
          local.get 2
          i32.const 12
          i32.add
          local.set 2
          local.get 1
          i32.const 1
          i32.add
          local.tee 1
          if  ;; label = @4
            local.get 2
            i32.const 1156
            local.get 1
            memory.copy
          end
          local.get 0
          local.get 2
          i32.store offset=4
          local.get 0
          i32.const 2740
          i32.store
          local.get 0
          i32.const 2752
          i32.const 3
          call 4
          unreachable
        end
        i32.const 4
        call 49
        local.tee 0
        i32.const 2580
        i32.store
        local.get 0
        i32.const 2540
        i32.store
        local.get 0
        i32.const 2560
        i32.store
        local.get 0
        i32.const 2644
        i32.const 2
        call 4
        unreachable
      end
      call 22
      unreachable
    end
    i32.const 3044
    i32.const 0
    i32.atomic.store
    i32.const 3040
    i32.const 1
    i32.atomic.store8
    local.get 1
    local.get 3
    i32.load offset=20
    local.tee 4
    i32.ne
    if  ;; label = @1
      loop  ;; label = @2
        block  ;; label = @3
          local.get 4
          i32.load
          local.tee 7
          if  ;; label = @4
            call 1
            global.get 0
            i32.const 16
            i32.sub
            local.tee 5
            global.set 0
            block  ;; label = @5
              local.get 7
              local.get 7
              i32.load
              i32.ne
              if  ;; label = @6
                i32.const 71
                local.set 2
                br 1 (;@5;)
              end
              block  ;; label = @6
                local.get 7
                i32.load offset=32
                i32.const 3
                i32.eq
                br_if 0 (;@6;)
                local.get 7
                global.get 3
                i32.ne
                br_if 0 (;@6;)
                i32.const 16
                local.set 2
                br 1 (;@5;)
              end
              global.get 3
              local.set 2
              local.get 5
              i32.const 12
              i32.add
              if  ;; label = @6
                local.get 5
                local.get 2
                i32.load8_u offset=40
                i32.store offset=12
              end
              local.get 2
              i32.const 1
              i32.store8 offset=40
              local.get 5
              i32.load offset=12
              i32.eqz
              if  ;; label = @6
                global.get 3
                i32.const 0
                i32.store8 offset=40
              end
              block (result i32)  ;; label = @6
                local.get 7
                i32.const 32
                i32.add
                local.tee 8
                i32.load
                local.tee 6
                if  ;; label = @7
                  loop  ;; label = @8
                    local.get 6
                    i32.const 3
                    i32.ge_s
                    if  ;; label = @9
                      local.get 5
                      i32.load offset=12
                      local.tee 2
                      i32.const 2
                      i32.le_u
                      if (result i32)  ;; label = @10
                        global.get 3
                        local.get 2
                        i32.store8 offset=40
                        i32.const 0
                      else
                        i32.const 28
                      end
                      drop
                      i32.const 28
                      local.set 2
                      br 4 (;@5;)
                    end
                    local.get 8
                    local.get 6
                    call 37
                    local.set 2
                    block  ;; label = @9
                      local.get 8
                      i32.load
                      local.tee 6
                      i32.eqz
                      br_if 0 (;@9;)
                      local.get 2
                      i32.const 73
                      i32.eq
                      br_if 0 (;@9;)
                      local.get 2
                      i32.const 28
                      i32.ne
                      br_if 1 (;@8;)
                    end
                  end
                  local.get 5
                  i32.load offset=12
                  local.tee 8
                  i32.const 2
                  i32.le_u
                  if (result i32)  ;; label = @8
                    global.get 3
                    local.get 8
                    i32.store8 offset=40
                    i32.const 0
                  else
                    i32.const 28
                  end
                  drop
                  local.get 2
                  i32.const 28
                  i32.eq
                  br_if 2 (;@5;)
                  local.get 2
                  i32.const 73
                  i32.eq
                  br_if 2 (;@5;)
                  local.get 6
                  i32.eqz
                  br 1 (;@6;)
                end
                local.get 5
                i32.load offset=12
                local.tee 2
                i32.const 2
                i32.le_u
                if (result i32)  ;; label = @7
                  global.get 3
                  local.get 2
                  i32.store8 offset=40
                  i32.const 0
                else
                  i32.const 28
                end
                drop
                i32.const 1
              end
              global.get 0
              i32.const 16
              i32.sub
              i32.const 0
              i32.store offset=12
              block  ;; label = @6
                i32.const 3304
                i32.load
                local.tee 2
                i32.eqz
                br_if 0 (;@6;)
                i32.const 3304
                i32.const 3312
                local.get 2
                call 25
                i32.const 3312
                i32.load
                i32.eqz
                br_if 0 (;@6;)
                i32.const 3304
                i32.const 1
                call 21
              end
              i32.const 0
              local.set 2
              i32.eqz
              br_if 0 (;@5;)
              local.get 7
              call 3
            end
            local.get 5
            i32.const 16
            i32.add
            global.set 0
            local.get 2
            i32.eqz
            br_if 1 (;@3;)
          end
          call 22
          unreachable
        end
        local.get 4
        i32.const 0
        i32.store
        local.get 4
        i32.const 4
        i32.add
        local.tee 4
        local.get 1
        i32.ne
        br_if 0 (;@2;)
      end
    end
    i32.const 3040
    i32.const 0
    i32.atomic.store8
    local.get 3
    local.get 3
    i32.atomic.load offset=16
    i32.store
    global.get 0
    i32.const 16
    i32.sub
    local.tee 1
    global.set 0
    local.get 1
    local.get 3
    i32.store offset=12
    i32.const 1782
    local.get 3
    i32.const 0
    call 70
    local.get 1
    i32.const 16
    i32.add
    global.set 0
    local.get 3
    i32.load offset=20
    local.tee 4
    if  ;; label = @1
      local.get 3
      i32.load offset=24
      local.tee 1
      local.get 4
      i32.ne
      if  ;; label = @2
        loop  ;; label = @3
          local.get 4
          local.get 1
          i32.const 4
          i32.sub
          call 56
          local.tee 1
          i32.ne
          br_if 0 (;@3;)
        end
        local.get 3
        i32.load offset=20
        local.set 4
      end
      local.get 3
      i32.load offset=28
      drop
      local.get 4
      call 18
    end
    local.get 3
    i32.const 32
    i32.add
    global.set 0
    local.get 0
    local.get 0
    i32.load offset=36
    local.tee 2
    local.get 0
    i32.load offset=40
    i32.ne
    if (result f64)  ;; label = @1
      i32.const 0
      local.set 1
      loop  ;; label = @2
        local.get 0
        local.get 2
        local.get 1
        i32.const 3
        i32.shl
        i32.add
        f64.load
        local.tee 13
        f64.store offset=24
        local.get 0
        local.get 1
        i32.store offset=16
        i32.const 1738
        local.get 0
        i32.const 16
        i32.add
        call 76
        local.get 12
        local.get 13
        f64.add
        local.set 12
        local.get 1
        i32.const 1
        i32.add
        local.tee 1
        local.get 0
        i32.load offset=40
        local.get 0
        i32.load offset=36
        local.tee 2
        i32.sub
        i32.const 3
        i32.shr_s
        i32.lt_u
        br_if 0 (;@2;)
      end
      local.get 12
      f64.const 0x1p-2 (;=0.25;)
      f64.mul
    else
      f64.const 0x0p+0 (;=0;)
    end
    f64.store
    i32.const 1758
    local.get 0
    call 76
    local.get 0
    i32.load offset=36
    local.tee 1
    if  ;; label = @1
      local.get 0
      local.get 1
      i32.store offset=40
      local.get 0
      i32.load offset=44
      drop
      local.get 1
      call 18
    end
    local.get 0
    i32.const 48
    i32.add
    global.set 0
    i32.const 0)
  (func (;116;) (type 0) (param i32)
    (local i32)
    block  ;; label = @1
      global.get 3
      i32.load offset=72
      i32.const 3092
      i32.load
      i32.const 2
      i32.shl
      i32.add
      i32.load
      local.tee 1
      i32.eqz
      if  ;; label = @2
        local.get 0
        local.get 0
        i32.store offset=88
        local.get 0
        local.get 0
        i32.store offset=92
        i32.const 3092
        i32.load
        local.get 0
        call 29
        br 1 (;@1;)
      end
      local.get 0
      local.get 1
      i32.store offset=88
      local.get 0
      local.get 1
      i32.load offset=92
      i32.store offset=92
      local.get 1
      local.get 0
      i32.store offset=92
      local.get 0
      i32.load offset=92
      local.get 0
      i32.store offset=88
    end
    local.get 0
    local.get 0
    i32.load offset=4
    local.get 0
    i32.load
    call_indirect (type 3))
  (func (;117;) (type 0) (param i32)
    local.get 0
    i32.load offset=4
    local.get 0
    i32.load offset=20
    call_indirect (type 0)
    local.get 0
    call 31)
  (func (;118;) (type 1) (param i32) (result i32)
    (local i32 i32 i32 i32 i32 i32 i64 i64)
    block  ;; label = @1
      i32.const 6000
      i32.atomic.load8_u
      i32.const 1
      i32.and
      br_if 0 (;@1;)
      global.get 0
      i32.const 32
      i32.sub
      local.tee 2
      global.set 0
      local.get 2
      i32.const 8
      i32.add
      local.tee 1
      i32.const 6000
      i32.store
      local.get 1
      i32.const 0
      i32.store8 offset=12
      local.get 1
      i32.const 0
      i32.store offset=8
      local.get 1
      i32.const 6001
      i32.store offset=4
      local.get 1
      i32.const 0
      i32.store8 offset=20
      local.get 1
      i32.load
      i32.atomic.load8_u
      if (result i32)  ;; label = @2
        i32.const 0
      else
        block (result i32)  ;; label = @3
          global.get 0
          i32.const 16
          i32.sub
          local.tee 3
          global.set 0
          local.get 3
          i32.const 12
          i32.add
          i32.const 1303
          call 51
          local.set 6
          block  ;; label = @4
            block  ;; label = @5
              local.get 1
              i32.load8_u offset=12
              i32.eqz
              br_if 0 (;@5;)
              local.get 1
              i32.load offset=4
              i32.load8_u
              i32.const 2
              i32.and
              i32.eqz
              br_if 0 (;@5;)
              local.get 1
              i32.load offset=8
              i32.load
              local.get 1
              i32.load offset=16
              i32.eq
              br_if 1 (;@4;)
            end
            loop  ;; label = @5
              local.get 1
              i32.load offset=4
              local.tee 4
              i32.load8_u
              local.tee 5
              i32.const 2
              i32.and
              if  ;; label = @6
                local.get 4
                local.get 5
                i32.const 4
                i32.or
                i32.store8
                i32.const 6028
                i32.const 6004
                call 88
                br 1 (;@5;)
              end
            end
            local.get 5
            i32.const 1
            i32.eq
            local.tee 5
            i32.eqz
            if  ;; label = @5
              local.get 1
              i32.load8_u offset=12
              i32.const 1
              i32.eq
              if  ;; label = @6
                local.get 1
                i32.load offset=8
                local.get 1
                i32.load offset=16
                i32.store
              end
              local.get 4
              i32.const 2
              i32.store8
            end
            local.get 6
            call 50
            local.get 3
            i32.const 16
            i32.add
            global.set 0
            local.get 5
            br 1 (;@3;)
          end
          call 22
          unreachable
        end
        i32.const 1
        i32.xor
      end
      local.get 2
      i32.const 32
      i32.add
      global.set 0
      i32.eqz
      br_if 0 (;@1;)
      i32.const 5992
      i32.const 21
      call 78
      if  ;; label = @2
        call 22
        unreachable
      end
      i32.const 5996
      i32.const 5992
      i32.store
      global.get 0
      i32.const 32
      i32.sub
      local.tee 3
      global.set 0
      local.get 3
      i32.const 8
      i32.add
      local.tee 1
      i32.const 6000
      i32.store
      local.get 1
      i32.const 0
      i32.store8 offset=12
      local.get 1
      i32.const 0
      i32.store offset=8
      local.get 1
      i32.const 6001
      i32.store offset=4
      local.get 1
      i32.const 0
      i32.store8 offset=20
      local.get 1
      i32.load
      i32.const 1
      i32.atomic.store8
      global.get 0
      i32.const 16
      i32.sub
      local.tee 2
      global.set 0
      local.get 2
      i32.const 12
      i32.add
      i32.const 1283
      call 51
      local.get 1
      i32.load offset=4
      local.tee 1
      i32.load8_u
      local.set 5
      local.get 1
      i32.const 1
      i32.store8
      call 50
      block  ;; label = @2
        local.get 5
        i32.const 4
        i32.and
        i32.eqz
        br_if 0 (;@2;)
        i32.const 6028
        call 60
        i32.eqz
        br_if 0 (;@2;)
        local.get 2
        i32.const 1283
        i32.store
        call 22
        unreachable
      end
      local.get 2
      i32.const 16
      i32.add
      global.set 0
      local.get 3
      i32.const 32
      i32.add
      global.set 0
    end
    i32.const 5996
    i32.load
    local.get 0
    i32.load
    local.set 2
    local.get 0
    i32.const 0
    i32.store
    i32.load
    local.get 2
    call 29
    i32.const 2956
    i32.load
    i32.const 0
    i32.lt_s
    if (result i32)  ;; label = @1
      i32.const 0
    else
      call 42
    end
    i32.eqz
    block  ;; label = @1
      block (result i32)  ;; label = @2
        i32.const 1507
        call 73
        local.set 1
        block  ;; label = @3
          i32.const 2956
          i32.load
          i32.const 0
          i32.lt_s
          if  ;; label = @4
            i32.const 1507
            local.get 1
            i32.const 2880
            call 39
            local.set 2
            br 1 (;@3;)
          end
          call 42
          i32.const 1507
          local.get 1
          i32.const 2880
          call 39
          local.set 2
          i32.eqz
          br_if 0 (;@3;)
          call 41
        end
        local.get 1
        local.get 1
        local.get 2
        i32.eq
        br_if 0 (;@2;)
        drop
        local.get 2
      end
      local.get 1
      i32.ne
      br_if 0 (;@1;)
      block  ;; label = @2
        i32.const 2960
        i32.load
        i32.const 10
        i32.eq
        br_if 0 (;@2;)
        i32.const 2900
        i32.load
        local.tee 1
        i32.const 2896
        i32.load
        i32.eq
        br_if 0 (;@2;)
        i32.const 2900
        local.get 1
        i32.const 1
        i32.add
        i32.store
        local.get 1
        i32.const 10
        i32.store8
        br 1 (;@1;)
      end
      global.get 0
      i32.const 16
      i32.sub
      local.tee 1
      global.set 0
      local.get 1
      i32.const 10
      i32.store8 offset=15
      block  ;; label = @2
        block  ;; label = @3
          i32.const 2896
          i32.load
          local.tee 2
          if (result i32)  ;; label = @4
            local.get 2
          else
            i32.const 2880
            call 40
            br_if 2 (;@2;)
            i32.const 2896
            i32.load
          end
          i32.const 2900
          i32.load
          local.tee 2
          i32.eq
          br_if 0 (;@3;)
          i32.const 2960
          i32.load
          i32.const 10
          i32.eq
          br_if 0 (;@3;)
          i32.const 2900
          local.get 2
          i32.const 1
          i32.add
          i32.store
          local.get 2
          i32.const 10
          i32.store8
          br 1 (;@2;)
        end
        i32.const 2880
        local.get 1
        i32.const 15
        i32.add
        i32.const 1
        i32.const 2916
        i32.load
        call_indirect (type 5)
        i32.const 1
        i32.ne
        br_if 0 (;@2;)
        local.get 1
        i32.load8_u offset=15
        drop
      end
      local.get 1
      i32.const 16
      i32.add
      global.set 0
    end
    i32.eqz
    if  ;; label = @1
      call 41
    end
    i32.const 0
    i32.const 1
    i32.atomic.rmw.add offset=3044
    drop
    loop  ;; label = @1
      i32.const 3040
      i32.atomic.load8_u
      i32.const 1
      i32.and
      i32.eqz
      br_if 0 (;@1;)
    end
    i32.const 0
    local.set 1
    call 61
    local.set 7
    loop  ;; label = @1
      local.get 0
      i32.load offset=12
      local.tee 2
      local.get 2
      i32.atomic.load
      i32.const 1
      i32.add
      i32.atomic.store
      local.get 0
      i32.load offset=12
      local.tee 2
      local.get 2
      i32.atomic.load
      i32.const 1
      i32.add
      i32.atomic.store
      local.get 0
      i32.load offset=12
      local.tee 2
      local.get 2
      i32.atomic.load
      i32.const 1
      i32.add
      i32.atomic.store
      local.get 0
      i32.load offset=12
      local.tee 2
      local.get 2
      i32.atomic.load
      i32.const 1
      i32.add
      i32.atomic.store
      local.get 0
      i32.load offset=12
      local.tee 2
      local.get 2
      i32.atomic.load
      i32.const 1
      i32.add
      i32.atomic.store
      local.get 1
      i32.const 5
      i32.add
      local.tee 1
      i32.const 10000
      i32.ne
      br_if 0 (;@1;)
    end
    call 61
    local.set 8
    local.get 0
    i32.load offset=4
    i32.load
    local.get 0
    i32.load offset=8
    i32.const 3
    i32.shl
    i32.add
    local.get 8
    local.get 7
    i64.sub
    f64.convert_i64_s
    f64.const 0x1.388p+13 (;=10000;)
    f64.div
    f64.store
    local.get 0
    i32.load
    local.set 1
    local.get 0
    i32.const 0
    i32.store
    local.get 1
    if  ;; label = @1
      local.get 1
      call 52
      call 18
    end
    local.get 0
    call 18
    i32.const 0)
  (func (;119;) (type 0) (param i32)
    local.get 0
    i32.const 1
    i32.atomic.store
    local.get 0
    call 38
    local.get 0
    i32.const 1
    i32.const 0
    i32.atomic.rmw.cmpxchg
    drop)
  (func (;120;) (type 7) (param i32 i32 i32 i32 i32 i32)
    local.get 0
    global.set 3
    local.get 1
    global.set 4
    local.get 2
    global.set 5
    local.get 3
    global.set 6
    block  ;; label = @1
      local.get 2
      i32.eqz
      br_if 0 (;@1;)
      local.get 4
      i32.eqz
      br_if 0 (;@1;)
      i32.const 2868
      local.get 4
      i32.store
    end)
  (func (;121;) (type 0) (param i32)
    local.get 0
    call 94)
  (func (;122;) (type 9) (result i32)
    global.get 0)
  (func (;123;) (type 1) (param i32) (result i32)
    global.get 0
    local.get 0
    i32.sub
    i32.const -16
    i32.and
    local.tee 0
    global.set 0
    local.get 0)
  (func (;124;) (type 0) (param i32)
    local.get 0
    global.set 0)
  (func (;125;) (type 1) (param i32) (result i32)
    local.get 0
    i32.load offset=4)
  (func (;126;) (type 1) (param i32) (result i32)
    i32.const 1246)
  (func (;127;) (type 1) (param i32) (result i32)
    i32.const 1523)
  (func (;128;) (type 1) (param i32) (result i32)
    i32.const 1227)
  (func (;129;) (type 7) (param i32 i32 i32 i32 i32 i32)
    local.get 0
    local.get 1
    i32.load offset=8
    local.get 5
    call 24
    if  ;; label = @1
      local.get 1
      local.get 2
      local.get 3
      local.get 4
      call 92
    end)
  (func (;130;) (type 7) (param i32 i32 i32 i32 i32 i32)
    local.get 0
    local.get 1
    i32.load offset=8
    local.get 5
    call 24
    if  ;; label = @1
      local.get 1
      local.get 2
      local.get 3
      local.get 4
      call 92
      return
    end
    local.get 0
    i32.load offset=8
    local.tee 0
    local.get 1
    local.get 2
    local.get 3
    local.get 4
    local.get 5
    local.get 0
    i32.load
    i32.load offset=20
    call_indirect (type 7))
  (func (;131;) (type 8) (param i32 i32 i32 i32 i32)
    local.get 0
    local.get 1
    i32.load offset=8
    local.get 4
    call 24
    if  ;; label = @1
      block  ;; label = @2
        local.get 2
        local.get 1
        i32.load offset=4
        i32.ne
        br_if 0 (;@2;)
        local.get 1
        i32.load offset=28
        i32.const 1
        i32.eq
        br_if 0 (;@2;)
        local.get 1
        local.get 3
        i32.store offset=28
      end
      return
    end
    block  ;; label = @1
      local.get 0
      local.get 1
      i32.load
      local.get 4
      call 24
      i32.eqz
      br_if 0 (;@1;)
      block  ;; label = @2
        local.get 1
        i32.load offset=16
        local.get 2
        i32.ne
        if  ;; label = @3
          local.get 2
          local.get 1
          i32.load offset=20
          i32.ne
          br_if 1 (;@2;)
        end
        local.get 3
        i32.const 1
        i32.ne
        br_if 1 (;@1;)
        local.get 1
        i32.const 1
        i32.store offset=32
        return
      end
      local.get 1
      local.get 2
      i32.store offset=20
      local.get 1
      local.get 3
      i32.store offset=32
      local.get 1
      local.get 1
      i32.load offset=40
      i32.const 1
      i32.add
      i32.store offset=40
      block  ;; label = @2
        local.get 1
        i32.load offset=36
        i32.const 1
        i32.ne
        br_if 0 (;@2;)
        local.get 1
        i32.load offset=24
        i32.const 2
        i32.ne
        br_if 0 (;@2;)
        local.get 1
        i32.const 1
        i32.store8 offset=54
      end
      local.get 1
      i32.const 4
      i32.store offset=44
    end)
  (func (;132;) (type 8) (param i32 i32 i32 i32 i32)
    local.get 0
    local.get 1
    i32.load offset=8
    local.get 4
    call 24
    if  ;; label = @1
      block  ;; label = @2
        local.get 2
        local.get 1
        i32.load offset=4
        i32.ne
        br_if 0 (;@2;)
        local.get 1
        i32.load offset=28
        i32.const 1
        i32.eq
        br_if 0 (;@2;)
        local.get 1
        local.get 3
        i32.store offset=28
      end
      return
    end
    block  ;; label = @1
      local.get 0
      local.get 1
      i32.load
      local.get 4
      call 24
      if  ;; label = @2
        block  ;; label = @3
          local.get 1
          i32.load offset=16
          local.get 2
          i32.ne
          if  ;; label = @4
            local.get 2
            local.get 1
            i32.load offset=20
            i32.ne
            br_if 1 (;@3;)
          end
          local.get 3
          i32.const 1
          i32.ne
          br_if 2 (;@1;)
          local.get 1
          i32.const 1
          i32.store offset=32
          return
        end
        local.get 1
        local.get 3
        i32.store offset=32
        block  ;; label = @3
          local.get 1
          i32.load offset=44
          i32.const 4
          i32.eq
          br_if 0 (;@3;)
          local.get 1
          i32.const 0
          i32.store16 offset=52
          local.get 0
          i32.load offset=8
          local.tee 0
          local.get 1
          local.get 2
          local.get 2
          i32.const 1
          local.get 4
          local.get 0
          i32.load
          i32.load offset=20
          call_indirect (type 7)
          local.get 1
          i32.load8_u offset=53
          i32.const 1
          i32.eq
          if  ;; label = @4
            local.get 1
            i32.const 3
            i32.store offset=44
            local.get 1
            i32.load8_u offset=52
            i32.eqz
            br_if 1 (;@3;)
            br 3 (;@1;)
          end
          local.get 1
          i32.const 4
          i32.store offset=44
        end
        local.get 1
        local.get 2
        i32.store offset=20
        local.get 1
        local.get 1
        i32.load offset=40
        i32.const 1
        i32.add
        i32.store offset=40
        local.get 1
        i32.load offset=36
        i32.const 1
        i32.ne
        br_if 1 (;@1;)
        local.get 1
        i32.load offset=24
        i32.const 2
        i32.ne
        br_if 1 (;@1;)
        local.get 1
        i32.const 1
        i32.store8 offset=54
        return
      end
      local.get 0
      i32.load offset=8
      local.tee 0
      local.get 1
      local.get 2
      local.get 3
      local.get 4
      local.get 0
      i32.load
      i32.load offset=24
      call_indirect (type 8)
    end)
  (func (;133;) (type 10) (param i32 i32 i32 i32)
    local.get 0
    local.get 1
    i32.load offset=8
    i32.const 0
    call 24
    if  ;; label = @1
      local.get 1
      local.get 2
      local.get 3
      call 93
      return
    end
    local.get 0
    i32.load offset=8
    local.tee 0
    local.get 1
    local.get 2
    local.get 3
    local.get 0
    i32.load
    i32.load offset=28
    call_indirect (type 10))
  (func (;134;) (type 10) (param i32 i32 i32 i32)
    local.get 0
    local.get 1
    i32.load offset=8
    i32.const 0
    call 24
    if  ;; label = @1
      local.get 1
      local.get 2
      local.get 3
      call 93
    end)
  (func (;135;) (type 5) (param i32 i32 i32) (result i32)
    (local i32 i32 i32 i32 i32 i32)
    global.get 0
    i32.const 80
    i32.sub
    local.tee 4
    global.set 0
    block  ;; label = @1
      block (result i32)  ;; label = @2
        i32.const 1
        local.get 0
        local.get 1
        i32.const 0
        call 24
        br_if 0 (;@2;)
        drop
        i32.const 0
        local.get 1
        i32.eqz
        br_if 0 (;@2;)
        drop
        global.get 0
        i32.const 16
        i32.sub
        local.tee 6
        global.set 0
        local.get 6
        local.get 1
        i32.load
        local.tee 3
        i32.const 8
        i32.sub
        i32.load
        local.tee 5
        i32.store offset=12
        local.get 6
        local.get 1
        local.get 5
        i32.add
        i32.store offset=4
        local.get 6
        local.get 3
        i32.const 4
        i32.sub
        i32.load
        i32.store offset=8
        local.get 6
        i32.load offset=8
        local.tee 3
        i32.const 2352
        i32.const 0
        call 24
        local.set 5
        local.get 6
        i32.load offset=4
        local.set 7
        block  ;; label = @3
          local.get 5
          if  ;; label = @4
            local.get 6
            i32.load offset=12
            local.set 1
            global.get 0
            i32.const -64
            i32.add
            local.tee 3
            global.set 0
            local.get 3
            i32.const -64
            i32.sub
            global.set 0
            i32.const 0
            local.get 7
            local.get 1
            select
            local.set 3
            br 1 (;@3;)
          end
          local.get 3
          local.set 5
          global.get 0
          i32.const -64
          i32.add
          local.tee 3
          global.set 0
          local.get 1
          local.get 7
          i32.ge_s
          if  ;; label = @4
            local.get 3
            i64.const 0
            i64.store offset=28 align=4
            local.get 3
            i64.const 0
            i64.store offset=36 align=4
            local.get 3
            i64.const 0
            i64.store offset=44 align=4
            local.get 3
            i64.const 0
            i64.store offset=20 align=4
            local.get 3
            i32.const 0
            i32.store offset=16
            local.get 3
            i32.const 2352
            i32.store offset=12
            local.get 3
            local.get 5
            i32.store offset=4
            local.get 3
            i32.const 0
            i32.store offset=60
            local.get 3
            i64.const 72057594037927937
            i64.store offset=52 align=4
            local.get 3
            local.get 1
            i32.store offset=8
            local.get 5
            local.get 3
            i32.const 4
            i32.add
            local.get 7
            local.get 7
            i32.const 1
            i32.const 0
            local.get 5
            i32.load
            i32.load offset=20
            call_indirect (type 7)
            local.get 1
            i32.const 0
            local.get 3
            i32.load offset=28
            select
            local.set 8
          end
          local.get 3
          i32.const -64
          i32.sub
          global.set 0
          local.get 8
          local.tee 3
          br_if 0 (;@3;)
          global.get 0
          i32.const -64
          i32.add
          local.tee 3
          global.set 0
          local.get 3
          i32.const 0
          i32.store offset=16
          local.get 3
          i32.const 2304
          i32.store offset=12
          local.get 3
          local.get 1
          i32.store offset=8
          local.get 3
          i32.const 2352
          i32.store offset=4
          i32.const 0
          local.set 1
          local.get 3
          i32.const 20
          i32.add
          i32.const 0
          i32.const 39
          memory.fill
          local.get 3
          i32.const 0
          i32.store offset=60
          local.get 3
          i32.const 1
          i32.store8 offset=59
          local.get 5
          local.get 3
          i32.const 4
          i32.add
          local.get 7
          i32.const 1
          i32.const 0
          local.get 5
          i32.load
          i32.load offset=24
          call_indirect (type 8)
          block  ;; label = @4
            block  ;; label = @5
              block  ;; label = @6
                local.get 3
                i32.load offset=40
                br_table 0 (;@6;) 1 (;@5;) 2 (;@4;)
              end
              local.get 3
              i32.load offset=24
              i32.const 0
              local.get 3
              i32.load offset=36
              i32.const 1
              i32.eq
              select
              i32.const 0
              local.get 3
              i32.load offset=32
              i32.const 1
              i32.eq
              select
              i32.const 0
              local.get 3
              i32.load offset=44
              i32.const 1
              i32.eq
              select
              local.set 1
              br 1 (;@4;)
            end
            local.get 3
            i32.load offset=28
            i32.const 1
            i32.ne
            if  ;; label = @5
              local.get 3
              i32.load offset=44
              br_if 1 (;@4;)
              local.get 3
              i32.load offset=32
              i32.const 1
              i32.ne
              br_if 1 (;@4;)
              local.get 3
              i32.load offset=36
              i32.const 1
              i32.ne
              br_if 1 (;@4;)
            end
            local.get 3
            i32.load offset=20
            local.set 1
          end
          local.get 3
          i32.const -64
          i32.sub
          global.set 0
          local.get 1
          local.set 3
        end
        local.get 6
        i32.const 16
        i32.add
        global.set 0
        i32.const 0
        local.get 3
        i32.eqz
        br_if 0 (;@2;)
        drop
        local.get 2
        i32.load
        local.tee 1
        i32.eqz
        br_if 1 (;@1;)
        local.get 4
        i32.const 24
        i32.add
        i32.const 0
        i32.const 56
        memory.fill
        local.get 4
        i32.const 1
        i32.store8 offset=75
        local.get 4
        i32.const -1
        i32.store offset=32
        local.get 4
        local.get 0
        i32.store offset=28
        local.get 4
        local.get 3
        i32.store offset=20
        local.get 4
        i32.const 1
        i32.store offset=68
        local.get 3
        local.get 4
        i32.const 20
        i32.add
        local.get 1
        i32.const 1
        local.get 3
        i32.load
        i32.load offset=28
        call_indirect (type 10)
        local.get 4
        i32.load offset=44
        local.tee 0
        i32.const 1
        i32.eq
        if  ;; label = @3
          local.get 2
          local.get 4
          i32.load offset=36
          i32.store
        end
        local.get 0
        i32.const 1
        i32.eq
      end
      local.get 4
      i32.const 80
      i32.add
      global.set 0
      return
    end
    local.get 4
    i32.const 1546
    i32.store offset=8
    local.get 4
    i32.const 485
    i32.store offset=4
    local.get 4
    i32.const 1163
    i32.store
    call 22
    unreachable)
  (func (;136;) (type 2)
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          i32.const 6080
          i32.const 0
          i32.const 1
          i32.atomic.rmw.cmpxchg
          br_table 0 (;@3;) 1 (;@2;) 2 (;@1;)
        end
        i32.const 1024
        global.set 1
        i32.const 1024
        i64.const 0
        i64.store align=1
        i32.const 1040
        i32.const 0
        i32.const 898
        memory.init 0
        i32.const 1938
        i32.const 0
        i32.const 25
        memory.fill
        i32.const 1963
        i32.const 0
        i32.const 33
        memory.init 1
        i32.const 1996
        i32.const 0
        i32.const 25
        memory.fill
        i32.const 2021
        i32.const 0
        i32.const 33
        memory.init 2
        i32.const 2054
        i32.const 0
        i32.const 25
        memory.fill
        i32.const 2079
        i32.const 0
        i32.const 42
        memory.init 3
        i32.const 2121
        i32.const 0
        i32.const 25
        memory.fill
        i32.const 2146
        i32.const 0
        i32.const 14
        memory.init 4
        i32.const 2160
        i32.const 0
        i32.const 35
        memory.fill
        i32.const 2195
        i32.const 0
        i32.const 33
        memory.init 5
        i32.const 2228
        i32.const 0
        i32.const 25
        memory.fill
        i32.const 2253
        i32.const 0
        i32.const 552
        memory.init 6
        global.get 9
        if  ;; label = @3
          unreachable
        end
        i32.const 2808
        i32.const 0
        i32.const 52
        memory.fill
        i32.const 2860
        i32.const 0
        i32.const 101
        memory.init 7
        i32.const 2961
        i32.const 0
        i32.const 63
        memory.fill
        i32.const 3024
        i32.const 0
        i32.const 12
        memory.init 8
        i32.const 3040
        i32.const 0
        i32.const 3040
        memory.fill
        i32.const 6080
        i32.const 2
        i32.atomic.store
        i32.const 6080
        i32.const -1
        memory.atomic.notify
        drop
        br 1 (;@1;)
      end
      i32.const 6080
      i32.const 1
      i64.const -1
      memory.atomic.wait32
      drop
    end
    data.drop 0
    data.drop 1
    data.drop 2
    data.drop 3
    data.drop 4
    data.drop 5
    data.drop 6
    i32.const 1
    global.set 9
    data.drop 7
    data.drop 8)
  (table (;0;) 44 44 funcref)
  (global (;0;) (mut i32) (i32.const 71632))
  (global (;1;) (mut i32) (i32.const 0))
  (global (;2;) (mut i32) (i32.const 0))
  (global (;3;) (mut i32) (i32.const 0))
  (global (;4;) (mut i32) (i32.const 0))
  (global (;5;) (mut i32) (i32.const 0))
  (global (;6;) (mut i32) (i32.const 0))
  (global (;7;) (mut i32) (i32.const 0))
  (global (;8;) (mut i32) (i32.const 0))
  (global (;9;) (mut i32) (i32.const 0))
  (export "r" (func 95))
  (export "s" (func 115))
  (export "t" (table 0))
  (export "u" (func 108))
  (export "v" (func 104))
  (export "w" (func 120))
  (export "x" (func 109))
  (export "y" (func 112))
  (export "z" (func 107))
  (export "A" (func 106))
  (export "B" (func 100))
  (export "C" (func 98))
  (export "D" (func 124))
  (export "E" (func 123))
  (export "F" (func 122))
  (start 136)
  (elem (;0;) (i32.const 1) func 118 55 90 121 119 31 117 82 116 81 114 110 113 111 45 105 102 103 101 99 97 96 55 32 45 45 135 129 131 134 32 130 132 133 32 127 32 126 32 128 89 125 89)
  (data (;0;) "%s failed to release mutex\00%s failed to acquire mutex\00-+   0X0x\00-0X+0X 0X-0x+0x 0x\00%s failed to broadcast\00%s:%d: %s\00vector\00/emsdk/emscripten/system/lib/libcxxabi/src/private_typeinfo.cpp\00std::exception\00nan\00bad_array_new_length\00terminating\00inf\00__cxa_guard_release\00__cxa_guard_acquire\00terminate_handler unexpectedly returned\00thread constructor failed\00__thread_specific_ptr construction failed\00thread::join failed\00mutex lock failed\00clock_gettime(CLOCK_MONOTONIC) failed\00Starting thread\00std::bad_alloc\00NAN\00INF\00catching a class without an object?\00__cxa_guard_acquire detected recursive initialization: do you have a function-local static variable whose initialization depends on that function?\00.\00(null)\00Thread %d, time %f\0a\00Total average time: %f\0a\00Benchmark final result: %d\0a\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\19\00\0b\00\19\19\19\00\00\00\00\05\00\00\00\00\00\00\09\00\00\00\00\0b\00\00\00\00\00\00\00\00\19\00\0a\0a\19\19\19\03\0a\07\00\01\00\09\0b\18\00\00\09\06\0b\00\00\0b\00\06\19\00\00\00\19\19\19\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\0e\00\00\00\00\00\00\00\00\19\00\0b\0d\19\19\19\00\0d\00\00\02\00\09\0e\00\00\00\09\00\0e\00\00\0e")
  (data (;1;) "\0c\00\00\00\00\00\00\00\00\00\00\00\13\00\00\00\00\13\00\00\00\00\09\0c\00\00\00\00\00\0c\00\00\0c")
  (data (;2;) "\10\00\00\00\00\00\00\00\00\00\00\00\0f\00\00\00\04\0f\00\00\00\00\09\10\00\00\00\00\00\10\00\00\10")
  (data (;3;) "\12\00\00\00\00\00\00\00\00\00\00\00\11\00\00\00\00\11\00\00\00\00\09\12\00\00\00\00\00\12\00\00\12\00\00\1a\00\00\00\1a\1a\1a")
  (data (;4;) "\1a\00\00\00\1a\1a\1a\00\00\00\00\00\00\09")
  (data (;5;) "\14\00\00\00\00\00\00\00\00\00\00\00\17\00\00\00\00\17\00\00\00\00\09\14\00\00\00\00\00\14\00\00\14")
  (data (;6;) "\16\00\00\00\00\00\00\00\00\00\00\00\15\00\00\00\00\15\00\00\00\00\09\16\00\00\00\00\00\16\00\00\16\00\000123456789ABCDEF\90\09\00\00\0c\09\00\00\e0\0a\00\00N10__cxxabiv116__shim_type_infoE\00\00\00\00\90\09\00\00<\09\00\00\00\09\00\00N10__cxxabiv117__class_type_infoE\00\00\00\00\00\00\000\09\00\00\17\00\00\00\18\00\00\00\19\00\00\00\1a\00\00\00\1b\00\00\00\1c\00\00\00\1d\00\00\00\1e\00\00\00\00\00\00\00\b0\09\00\00\17\00\00\00\1f\00\00\00\19\00\00\00\1a\00\00\00\1b\00\00\00 \00\00\00!\00\00\00\22\00\00\00\90\09\00\00\bc\09\00\000\09\00\00N10__cxxabiv120__si_class_type_infoE\00\00\00\00\00\00\00\008\0a\00\00\02\00\00\00#\00\00\00$\00\00\00\00\00\00\00T\0a\00\00\02\00\00\00%\00\00\00&\00\00\00\00\00\00\00 \0a\00\00\02\00\00\00'\00\00\00(\00\00\00h\09\00\00(\0a\00\00St9exception\00\00\00\00\90\09\00\00D\0a\00\00 \0a\00\00St9bad_alloc\00\00\00\00\90\09\00\00`\0a\00\008\0a\00\00St20bad_array_new_length\00\00\00\00\00\00\00\00\90\0a\00\00\03\00\00\00)\00\00\00*\00\00\00\90\09\00\00\9c\0a\00\00 \0a\00\00St11logic_error\00\00\00\00\00\c0\0a\00\00\03\00\00\00+\00\00\00*\00\00\00\90\09\00\00\cc\0a\00\00\90\0a\00\00St12length_error\00\00\00\00h\09\00\00\e8\0a\00\00St9type_info\00")
  (data (;7;) "\f8\0a\00\00\f8\0a\00\00\00\00\01\00\00\02\00\00\00\00\00\00\05\00\00\00\00\00\00\00\00\00\00\00\11\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\12\00\00\00\13\00\00\00H\11\00\00\00\04\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\ff\ff\ff\ff\0a")
  (data (;8;) "@\0b\00\00\d0\17\01\00\16\00\00\00"))
