class Phrase
  def initialize(phrase)
    @phrase = phrase.downcase
  end

  def word_count
    words = {}
    @phrase.scan(/[\w'?]+/).map do |word|
      word.gsub!(/^'?|'?$/, '')
      words[word] = words[word].nil? ? 1 : words[word] += 1
    end
    words
  end
end

module BookKeeping
  VERSION = 1
end
