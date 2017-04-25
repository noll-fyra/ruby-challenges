### Challenge 4 - Guessing Game

@tries = 0
@correct = rand(100) + 1

def user_guess
  guess = gets.chomp.to_i
  @tries += 1
  if guess > @correct
    p "The number is lower than #{guess}. Guess again"
    user_guess
  elsif guess < @correct
    p "The number is higher than #{guess}. Guess again"
    user_guess
  else
    p "You got it in #{@tries} tries"
  end
end

p 'Guess a number between 1 and 100'
user_guess
