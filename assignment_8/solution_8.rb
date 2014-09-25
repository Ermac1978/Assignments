require 'date'


if ARGV.size == 0
   print "What is your name? "
   name = $stdin.gets.chomp
   print "When is your birthday (enter in order YYYY-MM-DD)? "
   bday = Date.parse($stdin.gets.chomp)
   puts "Happy Birthday #{name.capitalize} (#{bday.strftime("%A, %B %d, %Y")})!"
else
  print "When is your birthday (enter in order YYYY-MM-DD)? "
  bday = Date.parse($stdin.gets.chomp)
  puts "Happy Birthday #{ARGV[0].capitalize} (#{bday.strftime("%A, %B %d, %Y")})!"
end
