module BookKeeping
  VERSION = 1
end

class Pangram
  class << self
    def pangram?(phrase)
      phrase.gsub!(/\d+|\W|\_/, '')
      phrase.downcase.chars.uniq.count == 26
    end
  end
end
