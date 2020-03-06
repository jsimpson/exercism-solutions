class Acronym
  class << self
    def abbreviate(phrase)
      phrase.tr("-", " ").split(" ").map(&:chr).join.upcase
    end
  end
end
