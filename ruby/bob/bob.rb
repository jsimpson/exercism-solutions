class Bob
  class << self
    def hey(phrase)
      phrase.gsub!(/\s+/, '')

      return 'Fine. Be that way!' if phrase.strip.empty?

      if phrase.end_with?('?')
        return 'Sure.'                              if phrase.include?(':)')
        return 'Calm down, I know what I\'m doing!' if phrase.upcase.gsub(/\d+/, '') == phrase
        return 'Sure.'
      end

      return 'Whoa, chill out!' if phrase.upcase == phrase && phrase.downcase != phrase
      'Whatever.'
    end
  end
end

module BookKeeping
  VERSION = 2
end
