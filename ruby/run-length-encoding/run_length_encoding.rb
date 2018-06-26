require 'pry'
require 'pry-byebug'

class RunLengthEncoding
  class << self
    def encode(input)
      input.chars.chunk { |c| c }.each_with_object('') do |chunk, encoded|
        c = chunk.first
        count = chunk.last.count
        if count > 1
          encoded << "#{count}#{c}"
        else
          encoded << c
        end
      end
    end

    def decode(input)
      input.scan(/(\d+)?(\D)/).each_with_object('') do |matches, decoded|
        c = matches.last
        count = matches.first.nil? ? 1 : matches.first
        decoded << c * count.to_i
      end
    end
  end
end

module BookKeeping
  VERSION = 3
end
