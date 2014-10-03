# Assignment 17 - in class
# Convert the questions from assignment 15 to a JSON file
# Read and parse the JSON into an array so the rest of the app remains the same

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
end
