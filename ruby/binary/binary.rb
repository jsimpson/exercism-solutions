class Binary
  class << self
    def to_decimal(binary)
      raise ArgumentError if binary =~ /[^01]/

      binary
        .chars
        .map(&:to_i)
        .reduce(0) { |acc, n| acc * 2 + n }
    end
  end
end

module BookKeeping
  VERSION = 3
end
