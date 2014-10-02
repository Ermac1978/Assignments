# Assignment 12
# Create an array of questions
# Ask a question of the user, from the array
# Continue asking questions until the user enters without giving an answer
# When you run out of questions, start over
# For extra credit: Save all the answers with the questions, and print a summary at the end

<<<<<<< HEAD


questions_array = ["Enter your name? ",
                   "Enter your species? ",
                   "Enter your gender? ",
                   "What planet are you from? "]

which_question = 0

# Using Loop loop because it is an infinite loop
  loop do
    print questions_array[which_question]
    answer = $stdin.gets.chomp
    break if answer.size == 0
#    puts which_question
    if which_question >= questions_array.size - 1
      which_question = 0
    else
      which_question += 1
    end
=======
questions = ["What's your favorite color?", "What's your favorite genre?", "What's your favorite letter?"]


count_this = 0

  questions.each do |question|
    puts "#{question}"
    user_answer = $stdin.gets.chomp
    count_this += 1
    puts "Press ENTER to END"
  break if user_answer.length == 0

>>>>>>> upstream/master
end
