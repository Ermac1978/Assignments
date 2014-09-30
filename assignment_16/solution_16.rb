# Assignment 16 - in class
# Pick a screenplay from this list, http://www.simplyscripts.com/a.html, in text
# Read in the screenplay and write it to a local file


require 'net/http'


# uri = URI('http://www.dailyscript.com/scripts/Aliens_James_Cameron_May_28_1985_first_draft.html')

# OR

# Net::HTTP.get(URI('http://www.dailyscript.com/scripts/Aliens_James_Cameron_May_28_1985_first_draft.html'))

# OR

script_text = Net::HTTP.get(URI('http://www.dailyscript.com/scripts/Aliens_James_Cameron_May_28_1985_first_draft.html'))

# script_text = Net::HTTP.get(uri)

file = File.new("movie_script_file.txt", 'a')

file.write(script_text)
