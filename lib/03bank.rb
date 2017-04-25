### Challenge 3 - Bank Transactions

@balance = 4000

def check_balance
  p 'Your current balance is'
  p @balance
end

def withdraw
  p 'How much would you like to withdraw?'
  amount = gets.chomp.to_i
  if @balance - amount >= 0
    @balance -= amount
  else
    p 'You have insufficient balance of'
  end
  check_balance
end

def deposit
  p 'How much would you like to deposit?'
  amount = gets.chomp.to_i
  @balance += amount
  check_balance
end

def controller(string)
  if string == 'deposit'
    deposit
  elsif string == 'withdraw'
    withdraw
  elsif string == 'check_balance'
    check_balance
  else
    go('no')
  end
end

def go(string)
  if string == 'yes'
    p 'Thank you'
  elsif string == 'no'
    puts 'Your current balance is'
    puts @balance
    puts 'What would you like to do? (deposit, withdraw, check_balance)'
    method = gets.downcase.chomp
    controller(method)
    p 'Are you done? (yes, no)'
    continue = gets.downcase.chomp
    go(continue)
  else
    go('no')
  end
end

go('no')
