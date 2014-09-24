# Create a String variable named 'name'
name = "Ahmad"
# Create a Date variable named "a_date"
require 'date'
a_date = Date.new(1978,06,11)
# Create an integer variable named "age"
age = 36
# Create an array of names named 'names'
names = ["Ahmad", "Nurdin", "Hutasuhut"]
# Create another array, using %w, named 'more_names'
more_names = %w(Ahmad Nurdin Hutasuhut)
# Create a Hash of names with ages named 'names_and_ages'
names_and_ages = {names => age}
# Keep this part as a way to test your code
puts name.class
puts a_date.class
puts age.class
puts names.class
puts more_names.class
puts names_and_ages.class

puts name.is_a? String
puts a_date.is_a? Date
puts age.is_a? Fixnum
puts names.is_a? Array
puts more_names.is_a? Array
puts names_and_ages.is_a? Hash

# Create a String literal and output it's class (one line)
puts "This is Ahmad's string".class
# Create a Fixnum literal and output it's class (one line)
puts 36.class
# Create an Array literal and output it's class (one line)
puts ["Ahmad", "Nurdin", "Hutasuhut"].class
# Create a Hash literal and output it's class (one line). Note to keep from confusing Ruby you'll have to wrap what you are outputting in parenthesis
puts ({"names" => 234}.class)
# Create a symbol and output it's class
puts :"My name is Ahmad".class
# Create a String constant with any name you choose
NAME = "Ahmad"
# Change the value of that constant
NAME = "Andy"
# Output the constant's value to the screen
puts NAME
