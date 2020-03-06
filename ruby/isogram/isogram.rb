class Isogram
  class << self
    def isogram?(word)
      word.downcase.chars.uniq == word.downcase.chars
    end
  end
end
