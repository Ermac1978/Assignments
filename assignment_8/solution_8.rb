require 'date'

if ARGV.size == 0
   print "What is your name? "
   name = $stdin.gets.chomp
   print "When is your birthday (enter in order YYYY-MM-DD)? "
   bday = Date.parse($stdin.gets.chomp)
else
   name = ARGV[0]
   bday = ARGV[1]
   bday = Date.parse(bday)
end

puts "Happy Birthday #{name.capitalize} (#{bday.strftime("%A, %B %d, %Y")})!"
