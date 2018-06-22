class Grains
  class << self
    def square(n)
      raise ArgumentError if n <= 0 || n > 64

      2**(n - 1)
    end

    def total
      square(64) * 2 - 1
    end
  end
end


module BookKeeping
  VERSION = 1
end
