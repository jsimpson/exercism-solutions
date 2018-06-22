class Year
  class << self
    def leap?(year)
      return true if year % 400 == 0 || year % 4 == 0 && year % 100 != 0
      false
    end
  end
end

module BookKeeping
  VERSION = 3
end
