module BookKeeping
  VERSION = 1
end

class Sieve
  def initialize(n)
    @n = n
  end

  def primes
    primes = [nil, nil, *2..@n] # 0 and 1 are not prime numbers
    (2..Math.sqrt(@n)).each do |i|
      (i**2..@n).step(i) do |j|
        primes[j] = nil if primes[i]
      end
    end
    primes.compact
  end
end
