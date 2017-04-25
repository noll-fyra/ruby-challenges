### Challenge 2 - Reverse a string

# Reverse a string in place. In other words, do not create a new string or use other methods on the string such as `reverse`. The goal of the problem is to use a loop and the string accessors to figure out which values to swap for other values. Below is some sample output.

def reverse(string)
  # string.split('').reverse.join
  string.split('').map.with_index { |_char, index| string[-(index + 1)] }.join
end

p reverse('reverse_me')
