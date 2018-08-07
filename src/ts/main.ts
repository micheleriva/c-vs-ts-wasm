function fibonacci(i: number): number {
  if (i < 0)
    return -1
  else if (i === 0)
    return 0
  else if (i === 1)
    return 1
  else
    return fibonacci(i-1) + fibonacci(i-2)
}

const n: number = 100
const result: number = fibonacci(n)