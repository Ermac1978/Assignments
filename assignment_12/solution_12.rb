# Assignment 12
# Create an array of questions
# Ask a question of the user, from the array
# Continue asking questions until the user enters without giving an answer
# When you run out of questions, start over
# For extra credit: Save all the answers with the questions, and print a summary at the end


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
    if which_question >= questions_array.size - 1
      which_question = 0
    else
      which_question += 1
    end
end
