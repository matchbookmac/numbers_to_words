class Fixnum
  define_method(:numbers_to_words) do

  ones_digit = {0 => "zero", 1 => "one", 2 => "two", 3 => "three", 4 => "four", 5 => "five", 6 => "six", 7 => "seven", 8 => "eight", 9 => "nine"}
  ones_digit.fetch(self)

  end
end
