class ResistorColor
  COLORS = ["black", "brown", "red", "orange", "yellow", "green", "blue", "violet", "grey", "white"]

  class << self
    def color_code(color)
      COLORS.index { |i| i == color }
    end
  end
end
