module BookKeeping
  VERSION = 1
end

class Integer
  def to_roman
    out = ""
    n = self
    TO_ROMAN.keys.each do |value|
      while n >= value
        out << TO_ROMAN[value]
        n = n - value
      end
    end
    out
  end

  private

  TO_ROMAN = {
    1000 => 'M',
    900  => 'CM',
    500  => 'D',
    400  => 'CD',
    100  => 'C',
    90   => 'XC',
    50   => 'L',
    40   => 'XL',
    10   => 'X',
    9    => 'IX',
    5    => 'V',
    4    => 'IV',
    1    => 'I'
  }
end
