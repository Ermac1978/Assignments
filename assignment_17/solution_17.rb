# Assignment 17 - in class
# Convert the questions from assignment 15 to a JSON file
# Read and parse the JSON into an array so the rest of the app remains the same

<<<<<<< HEAD
#!/user/bin/ruby

=begin
Alternate Method:

require 'json'

file = File.new("sample_questions.json")
json_questions = file.read
questions = JSON.parse(json_questions)
questions_array = questions["questions"]

questions_array.each do |x|
  print x
  answer = gets.chomp
end
=end

require 'json'


file = File.read("sample_questions.json")
json_questions = JSON.parse(file)
json_questions["questions"].each do |question|
  print question
  answer = gets.chomp
=======

# questions = ["What's your favorite color?", "What's your favorite genre?", "What's your favorite letter?"]

require 'json'
# Pulling the file as readable from a outside source "question.json" in a variable "json_file"
file = File.read('question.json')
#Taking taking the JSON file and parsing it into Questions
questions = JSON.parse(file)
# pulls questions and the value from it and save it under a new variable


count_this = 0

  questions.each do |question|
    puts "#{question}"
    user_answer = $stdin.gets.chomp
    count_this += 1
    puts "Press ENTER to END"
  break if user_answer.length == 0

>>>>>>> upstream/master
end
