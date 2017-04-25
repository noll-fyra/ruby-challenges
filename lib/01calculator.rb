### Challenge 1 - Calculator

def add(first, second)
  first + second
end

def sub(first, second)
  first - second
end

def mult(first, second)
  first * second
end

def div(first, second)
  first * second
end

def choice(string, first, second)
  if string == "add"
     add(first, second)
 elsif string == "sub"
      sub(first, second)
    elsif string == "mult"
      mult(first, second)
    elsif string == "div"
div(first, second)
  end
end

puts "What calculation would you like to do? (add, sub, mult, div)"
  calculate = gets.chomp
  puts "What is number 1?"
  first = gets.chomp.to_i
  puts "What is number 2?"
  second = gets.chomp.to_i

  puts choice(calculate, first, second)
