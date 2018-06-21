module BookKeeping
  VERSION = 2
end

class Pangram
  class << self
    def pangram?(phrase)
      phrase.downcase.gsub(/[^[:alpha:]]/, '').chars.uniq.count == 26
    end
  end
end
