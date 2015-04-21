class Fixnum
  define_method(:numbers_to_words) do
    written_number = []
    number_digits = self.to_s().split("")
    number_digits.map!() do |number|
      number.to_i()
    end

    ones_digit = {0 => nil, 1 => "one", 2 => "two", 3 => "three", 4 => "four", 5 => "five", 6 => "six", 7 => "seven", 8 => "eight", 9 => "nine"}
    teens_digits = {0 => "ten", 1 => "eleven", 2 => "twelve", 3 => "thirteen", 4 => "fourteen", 5 => "fifteen", 6 => "sixteen", 7 => "seventeen", 8 => "eighteen", 9 => "nineteen"}
    tens_digit = {0 => nil, 2 => "twenty", 3 => "thirty", 4 => "fourty", 5 => "fifty", 6 => "sixty", 7 => "seventy", 8 => "eighty", 9 => "ninety"}

    number_digits.reverse!()


    #number_of_pow_three_arrays = (number_digits.length()/3).floor();
    #pow_three_array_array = []

    #while(number_of_pow_three_arrays >= 0) do
    #  pow_three_array = []
    #  number_digits[0 + number_of_pow_three_arrays*3]
    #  number_digits[1]
    #  number_digits[2]
    #  pow_three_array_array.push()
    #end

    if(self.eql?(0))
      written_number.push("zero")
    else
      number_digits.each_index() do |index|
        if(index.%(3).eql?(0))
          written_number.push(ones_digit.fetch(number_digits[index]))
        elsif(index.%(3).eql?(1))
          if(number_digits[index.%(3)].eql?(1))
            written_number.pop()
            written_number.push(teens_digits.fetch(number_digits[0]))
          else
            written_number.push(tens_digit.fetch(number_digits[index]))
          end
        elsif(index.%(3).eql?(2))
          written_number.push(ones_digit.fetch(number_digits[index]) + " hundred")
        end
      end
    end
    written_number.delete_if() do |number|
      number.eql?(nil)
    end
    written_number.reverse!().join(" ")
  end
end
