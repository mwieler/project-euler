# sum multiples of 3 or 5 that occur among counting #s 1 - 999
SumMultiples <- function(numbers,mult1,mult2){
  multiples <- numbers[numbers %% mult1 == 0 | numbers %% mult2 == 0]
  return(sum(multiples))
}

SumMultiples(seq(1,999,1),3,5)
system.time(SumMultiples(seq(1,9999,1),3,5))

# fibonnaci #s < 4 million. Find sum of even-numbered terms

memo<-c(1,rep(NA,100)) #because Fib(1) = Fib(2) = 1
Fib <- function(n) {
  if (n == 0) {
    return (0)
  }
  else if (n == 1) {
    return (1)
  }
  else if (!is.na(memo[n])) {
    return (memo[n])
  }
  memo[n] <<- Fib(n - 2) + Fib(n - 1) # <<- so that persists
}
fib.seq <- sapply(seq(1,33,1),Fib) #same as lapply() but returns a vector, matrix, or array
fib.seq.evens <- fib.seq[fib.seq %% 2 == 0]
sum(fib.seq.evens)

# The prime factors of 13195 are 5, 7, 13 and 29.
# What is the largest prime factor of the number 600851475143 ?

# pseudocode
LargestPrimeFactor <- function(n) {
  for i from 2 to infinity by 2
    p = n / i
    if modulus == 0 then
      p = n / (i^j)
      repeat until modulus != 0
      c(factors,p)
  i = i + 2
  stop when i == p
  #make more efficient by excluding multiples of numbers not already factors
}

x/29^4 = 849523

