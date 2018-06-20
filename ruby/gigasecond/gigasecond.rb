module BookKeeping
  VERSION = 2
end

class Gigasecond
  GIGASECOND = 10**9
  class << self
    def from(time)
      time + GIGASECOND
    end
  end
end
