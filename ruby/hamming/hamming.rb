module BookKeeping
  VERSION = 2
end

class Hamming
  class << self
    def compute(s1, s2)
      raise ArgumentError unless s1.size == s2.size

      s1.chars.zip(s2.chars).count { |a, b| a != b }
    end
  end
end
