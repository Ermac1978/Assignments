# Assignment 17 - in class
# Convert the questions from assignment 15 to a JSON file
# Read and parse the JSON into an array so the rest of the app remains the same

#!/user/bin/ruby

require 'json'


file = File.read("sample_questions.json")
# puts file.class
json_questions = JSON.parse(file)
# puts json_questions.class
json_questions["questions"].each do |question|
  print question
# puts question.class
  answer = gets.chomp
end
