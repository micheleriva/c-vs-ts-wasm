function fibonacci(i: i32): i32 {
  if (i < 0)
    return -1
  else if (i === 0)
    return 0
  else if (i === 1)
    return 1
  else
    return fibonacci(i-1) + fibonacci(i-2)
}

const n: i32 = 100
const result: i32 = fibonacci(n)