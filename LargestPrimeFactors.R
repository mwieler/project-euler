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

potential.primes <- c(2,seq(3,2))
i <- 1
### Fix the fact that i needs to be re-set to zero every time
IsFactor <- function(n,potential.prime) {
    if (n %% potential.prime^i == 0) {
        i <- i + 1
        return (IsFactor(n,potential.prime))
    }
    j <- i
    i <- 1
    return (c(n,potential.prime,j-1))
}



LargestPrimeFactor <- function(n,potential.prime) {
    unfactored <- n
    exp <- 1
    if (n %% potential.prime^exp == 0) {
        exp <- exp + 1
        return
    }

n = 25
pp = 5
exp = 1
IF modulus is zero, increment exponent by 1 and try again