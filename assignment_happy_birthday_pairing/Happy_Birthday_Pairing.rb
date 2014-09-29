#Assignment "Happy birthday Pairing"

#today = Date.today
#born = Date.new(2000,1, 1)
# (today - born).to_i / 365
#(today - born).class
#=> Rational

require 'date'

print "What is your name? "
name = $stdin.gets.chomp


loop do
  print "When is your birthday (enter in order YYYY-MM-DD)? "
  bday = Date.parse($stdin.gets.chomp)
  if bday == Date.today
    puts "Happy Birthday #{name.capitalize} (#{bday.strftime("%A, %B %d, %Y")})!"
  else
    puts "\nYour Age is now #{(Date.today-bday).to_i/365}"
    print "Please enter another birthdate or today's date to exit\n\n"
  end
  break if bday == Date.today
end

# break if today is user birthday

# else give user age
