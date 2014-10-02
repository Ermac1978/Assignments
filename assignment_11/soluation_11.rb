=begin
# Assignment 11
* Take an argument, and/or request input of a number from the user.
* Iterate the number of times indicated by the input number
* Within the loop, print the number of the iteration
* Do this for each of these methods of looping: *while, *for i in, loop, *until, .*times, *begin until, *range
* All should print from 1 to the number input by the user
=end

#"print"-prompt user for a input(number)
print "What floor are you on?"

#"gets"- is the Ruby method that gets input from the user
#".chomp"- is basically deleting any extra space that the user probably add
floor = $stdin.gets.chomp

#taking floor which came in as a string from user and changing it to a # (fixnum)
#store the floor string into a fixnum under "floor_num"
floor_num = floor.to_i

#"floor_num"- is basically what user put
#".times do"- is what i am using to loop the amount of # in "floor_num"
#"|num|"- is actually #'s of how many times the loop iteration
floor_num.times do |num|
# In brain words "Iterate the number of times indicated by the input number"
#"puts"- gives the command to show what i am printing, the input and how many times
#"+1"- to get it to start from the number 1
  puts "There are #{floor_num} floors. #{num+1}"
#"end"- is the go ahead for ruby to run
end


#"i" is my counter, "1..floor_num"-is my range
for i in 1..floor_num do
  puts "Your on this floor #{i}"
end


j = 1

until j > floor_num do
  puts "Here's floor = #{j}"
  j +=1
end

while floor_num > 0
  floor_num -= 1
  puts "How do you like this floor #{floor_num+1}?"
end

floor_num = floor.to_i

(1..floor_num).each do |digit|
  puts "Is this your floor #{digit}"
end


begin
  puts "hi #{floor_num -=1}"
end until floor_num <= 0
