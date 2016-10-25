require 'byebug'
## After 

@string_values = { 3 => "Fizz", 5 => "Buzz", 7 => "Woof"}

## it should take an array of values
def divisible_and_return_value(number: , numbers_to_be_divided: )  
  raise "Please enter an array of numbers" unless numbers_to_be_divided.is_a?(Array)
  string = ""
  numbers_to_be_divided.each do |a|
    if number % a == 0
      string += @string_values[a]
    end
    string += @string_values[a] * number.to_s.count(a.to_s)
  end
  string
end

def fizz_buzz_woof(a)
  cumulative_string = ""
  cumulative_string += divisible_and_return_value(number: a, numbers_to_be_divided: [3,5,7] )
  cumulative_string.empty? ? a : cumulative_string
end 

(1..100).each do |a|
  puts fizz_buzz_woof(a)
end

## assertions
puts fizz_buzz_woof(35) == "FizzBuzzBuzzWoof" ? true : fizz_buzz_woof(35)

puts fizz_buzz_woof(33) == "FizzFizzFizz" ? true : fizz_buzz_woof(33)

puts fizz_buzz_woof(77) == "WoofWoofWoof" ? true : fizz_buzz_woof(77)


# RSpec.describe "Fizzbuzz woff" do 

#   describe "fizzbuzz" do 

#     it "prints out Fizzbuzz when % 3 and 5" do 

#     end 

#   end

# end







