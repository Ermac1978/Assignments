

#Add another prompt for birthdate as the 2nd argument, or if no arguments given, prompt for it
#Show the birth date in parenthesis after the greeting
#Date must be passed in as: 2014/09/22 or 2014-09-22
#Change the output formatting to: Friday, April 1, 1974
#Capitalize the user's name

# 1st prompt for the user
print "What is your name?"
name = $stdin.gets.chomp

# 2nd prompt for user to put birthdate
puts "What is your Birthdate?"
# prompting them to use format
puts "Please use formate YYYY-MM-DD"

#birthdate came in as string
birthdate = $stdin.gets.chomp

#changing a string object that user plugs in into a date object
require 'date'

#storing date object into bday
bday = Date.parse(birthdate)

=begin
prompting happy birthday username capitalizing all letter w/upcase
and in putting birthday in parenthesis
format date to look like this Friday, April 1, 1974
=end
puts "Happy Birthday #{name.upcase} (#{bday.strftime('%A %b %d, %Y')})!"
