# Assignment 15 - in class
# Modify assignment 12 to read the questions from a file instead of the hardcoded array
# Load them into an array so the rest of the program can remain the same
# No looping


file = File.new('sample_questions.txt')
questions = file.readlines

#  Enter your name?
#  Enter your species?
#  Enter your gender?
#  What planet are you from?

questions.each do |question|
  print question
  answer = gets.chomp
end
