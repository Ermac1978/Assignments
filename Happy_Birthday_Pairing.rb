print "What is your name?"
name = gets.chomp

require 'date'


loop do
print "What is your Birthday? (YYYY-MM-DD):\n"
birthdate = Date.parse($stdin.gets.chomp)
now_date = Date.today
age = now_date - birthdate
age.to_i
age_2 = age.to_i/365

if birthdate == now_date
  puts "Happy Birthday #{name.upcase!}!"
  break
else
  puts "Its not your birthday yet, you are only #{age_2}!"
end
end
