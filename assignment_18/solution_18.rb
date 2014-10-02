<<<<<<< HEAD
# Assignment 18: Movie Querying script
# Use IMDB's movie querying script to create a command line app which prompts the user for a movie title
# Using the entered movie title, search via the API for the movie's plot (http://www.myapifilms.com/)
# Print the plot to the screen

# QUERY_URL = 'http://www.myapifilms.com/imdb'
# uri = URI(QUERY_URL + "?title=#{movie_title}")

require 'net/http'
require 'json'


print "Please enter a movie title: "
movie_title = gets.chomp


uri = URI('http://www.myapifilms.com/imdb' + "?title=#{URI.escape(movie_title)}")
movie_plot = Net::HTTP.get(uri)
plot = JSON.parse(movie_plot)

puts plot[0]["plot"]
=======
=begin
# Assignment 18: Movie Querying script
# Use IMDB's movie querying script to create a command line app which prompts the user for a movie title
* Using the entered movie title, search via the API for the movie's plot
* Print the plot to the screen
=end
require 'net/http'
require 'uri'

print "Name a movie?\n"
movie = gets.chomp

parms =  movie

uri = URI('http://www.myapifilms.com/imdb?title=' + movie)

response = Net::HTTP.get_response(uri)

print response.body
>>>>>>> upstream/master
