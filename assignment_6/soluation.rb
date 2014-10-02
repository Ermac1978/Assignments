# Create a String variable named 'name'
name = "name"

# Create a Date variable named "a_date"
require 'date'
a_date = Date.new(2014,8,23)

# Create an integer variable named "age"
age = 21

# Create an array of names named 'names'
names = ["me", "myself", "and i"]

# Create another array, using %w, named 'more_names'
more_names = %w[what who when]

# Create a Hash of names with ages named 'names_and_ages'
names_and_ages = {"me" => 21, "he"=> 35, "she"=> 30}

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
String.class
# Create a Fixnum literal and output it's class (one line)
21.class
# Create an Array literal and output it's class (one line)
["person", "place", "things"].class
# Create a Hash literal and output it's class (one line). Note to keep from confusing Ruby you'll have to wrap what you are outputting in parenthesis
({food:"pizza", drink:"voka", weapon:"marker"}).class
# Create a symbol and output it's class
:test.class
# Create a String constant with any name you choose
STRING = "Girl"
# Change the value of that constant
STRING.replace ("Boy")
# Output the constant's value to the screen
puts STRING
