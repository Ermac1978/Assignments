# Assignment 11
#Take an argument, and/or request input of a number from the user.
#Iterate the number of times indicated by the input number
#Within the loop, print the number of the iteration
#Do this for each of these methods of looping: while, for i in, loop, until, .times, begin until, range
#All should print from 1 to the number input by the user


print "Please give me a number: "
number = $stdin.gets.chomp

num = number.to_i


puts "WHILE Loop"
x = 1
while x <= num
   puts x
   x += 1
end

puts "UNTIL Loop"
x = 1
until x > num
  puts x
  x += 1
end

puts "FOR I IN Loop"
for x in 1..num
   puts x
end

puts "LOOP Loop"
x = 1
loop do
  puts x
  break if x == num
  x += 1
end

puts ".TIMES Loop"
num.times do |x|
  x += 1
  puts x
end

puts "BEGIN UNTIL Loop"
x = 1
begin
   puts x
   x += 1
end until x > num

puts "RANGE Loop"
(1..num).each do |x|
  puts x
end
