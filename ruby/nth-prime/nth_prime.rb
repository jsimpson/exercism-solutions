class Prime
  class << self
    def nth(n)
      raise ArgumentError if n == 0
      primes = []
      i = 2
      loop do
        primes << i if is_prime?(primes, i)
        break if primes.size >= n
        i += 1
      end
      primes.last
    end

    private

    def is_prime?(primes, n)
      primes.each do |p|
        return false if n % p == 0
        return true  if p**2 > n
      end
      true
    end
  end
end

module BookKeeping
  VERSION = 1
end
