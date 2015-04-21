class Fixnum
  define_method(:numbers_to_words) do
    written_number = []
    number_digits = self.to_s().split("")
    number_digits.map!() do |number|
      number.to_i()
    end

    ones_digit = {0 => "zero", 1 => "one", 2 => "two", 3 => "three", 4 => "four", 5 => "five", 6 => "six", 7 => "seven", 8 => "eight", 9 => "nine"}
    teens = {}
    tens_digit = {2 => "twenty", 3 => "thirty", 4 => "fourty", 5 => "fifty", 6 => "sixty", 7 => "seventy", 8 => "eighty", 9 => "ninety"}

    number_digits.reverse!()
    number_digits.each_index() do |index|
      if(index.eql?(0))
        written_number.push(ones_digit.fetch(number_digits[index]))
      elsif(index.eql?(1))
        written_number.push(tens_digit.fetch(number_digits[index]))
      end
    end
    written_number.reverse!().join(" ")
  end
end
