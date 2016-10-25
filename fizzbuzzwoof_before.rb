# Before 

def int_includes_3(a)
  a.to_s.include?("3") ? true : false
end

def int_includes_5(a)
  a.to_s.include?("5") ? true : false
end

def int_includes_7(a)
  a.to_s.include?("7") ? true : false
end

def check_count_of_number(a)
  "fizz" * a.to_s.count("3")  
end


def fizz_buzz_woof(a)

  string = ""
  if int_includes_3(a)
    string += "Fizz"
  end
  if a % 3 == 0 
    string += "Fizz"
  end
  if a % 5 == 0 
    string += "Buzz"
  end
  if int_includes_5(a)
    string += "Buzz"
  end
  if a % 7 == 0 
    string += "Woof"
  end
  if int_includes_7(a)
    string += "Woof"
  end
  if string.empty?
     a
  else
     string
  end
end

(1..100).each do |a|
  puts fizz_buzz_woof(a)
end


puts fizz_buzz_woof(35) == "FizzBuzzBuzzWoof"