=begin
# Assignment 10
* Take a string from the user, reverse it, remove the last character and reverse it again (no shortcuts)
* Be sure if the user enters whitespace on either side of the input, that you remove it first
* For the original text input, count how many words (as separated by spaces) and print this count.
=end
#Asking user for string (their name)
print "What is your name?"

#taking string and chomp it and saving it under name
name = $stdin.gets.chomp


#strip removed any white space
#taking the string (Name) and reversing it .reverse
#and .chop remove the last letter
puts name.strip.reverse.chop.count "name"
