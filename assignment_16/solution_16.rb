<<<<<<< HEAD
# Assignment 16 - in class
# Pick a screenplay from this list, http://www.simplyscripts.com/a.html, in text
# Read in the screenplay and write it to a local file

=begin
Alternate Methods:
# uri = URI('http://www.dailyscript.com/scripts/Aliens_James_Cameron_May_28_1985_first_draft.html')
# script_text = Net::HTTP.get(uri)

# OR

# Net::HTTP.get(URI('http://www.dailyscript.com/scripts/Aliens_James_Cameron_May_28_1985_first_draft.html'))
# script_text = Net::HTTP.get(uri)
=end

require 'net/http'

script_text = Net::HTTP.get(URI('http://www.dailyscript.com/scripts/Aliens_James_Cameron_May_28_1985_first_draft.html'))

file = File.new("movie_script_file.txt", 'a')
file.write(script_text)
=======
require 'net/http'

# To get the uri from the website you desire
uri = URI('http://www.scifiscripts.com/scripts/alien3_fasano.txt')
# making a new file that i can write on
new_web_file = File.new("solution_16.txt", "w+")
# grabbing the uri and changing it to a string
script_text = Net::HTTP.get(uri)
# now its a string under a variable
file = File.new('solution_16.txt', 'a')
#save it in file
file.write(script_text)
>>>>>>> upstream/master
