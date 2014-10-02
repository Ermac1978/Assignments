<<<<<<< HEAD
# Assignment 13
# Create a guessing game
# The user must guess the number chosen by the app
# Provide feedback to the user as to if their guess is lower or higher than then number
# Count the number of guesses and display at the end

random_num = rand(10)

count = 1
loop do
  print "Please provide me with a number between 1 to 10: "
  guess_num = $stdin.gets.chomp
  break if guess_num.to_i == random_num
  if guess_num.to_i < random_num
    print "Please provide a higher number: "
#    guess_num = $stdin.gets.chomp
#    break if guess_num.to_i == random_num
  else
    print "Please provide a lower number: "
#    guess_num = $stdin.gets.chomp
#    break if guess_num.to_i == random_num

  end
  count += 1
end

puts "You have found the correct random number, and it took you #{count} guesses to do it!"
=======
=begin
# Assignment 13
* Create a guessing game
* The user must guess the number chosen by the app
* Provide feedback to the user as to if their guess is lower or higher than then number
* Count the number of guesses and display at the end
=end
number = rand(1..10)

loop do
  print "Guess the number I'm thinking of between 1-10?\n"
  user_guess = $stdin.gets.chomp.to_i

  if user_guess > number
    puts "Your number is too HIGH! guess again"
  elsif user_guess < number
    puts "Your too LOW! guess again"
  else
    puts "Good Job! YOU WON"
    break
  end
end
>>>>>>> upstream/master
