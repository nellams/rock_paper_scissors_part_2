weapon = [ "r", "p", "s" ]
user_score = 0
computer_score = 0

while user_score < 2 && computer_score < 2
  puts "Your score: #{user_score}, Computer's score: #{computer_score}"
  puts "Choose your weapon! \n  'r' for rock \n  'p' for paper \n  's' for scissors"
  input = gets.chomp

until weapon.include?(input)
  puts "Invalid entry. Please try again."
  input = gets.chomp
end

if input == "r"
  input = "rock"
elsif input == "p"
  input = "paper"
elsif input == "s"
  input = "scissors"
end

puts "You chose " + input

computer_weapon = rand(4)

if computer_weapon == 1
  computer_weapon = "rock"
elsif computer_weapon == 2
  computer_weapon = "paper"
else computer_weapon == 3
  computer_weapon = "scissors"
end

user_wins = "#{input} beats #{computer_weapon} \n You win!"
computer_wins = "#{computer_weapon} beats #{input} \n Computer wins!"

puts "computer chose " + computer_weapon

if input == computer_weapon
  puts "It's a tie!"
elsif input == "rock" && computer_weapon == "scissors"
  puts user_wins
  user_score += 1
elsif input == "rock" && computer_weapon == "paper"
  puts computer_wins
  computer_score += 1
elsif input == "paper" && computer_weapon == "rock"
  puts user_wins
  user_score += 1
elsif input == "paper" && computer_weapon == "scissors"
  puts computer_wins
  computer_score += 1
elsif input == "scissors" && computer_weapon == "rock"
  puts computer_wins
  computer_score += 1
else input == "scissors" && computer_weapon == "paper"
  puts user_wins
  user_score += 1
end

end

puts "Your score: #{user_score}, Computer's score: #{computer_score}"
if user_score >= 2
  puts "YOU WIN THE GAME!!"
else
  puts "COMPUTER WINS THE GAME"
end
