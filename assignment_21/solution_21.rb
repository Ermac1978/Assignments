=begin
Assignment 21

First
Create a Person class with attributes: first name, last name, and birthdate.
First name and last name should not be able to be written to, but should be readable.
Birthdate can be set and read.
Create a public instance method called 'name' that takes the name and sets the first name and last name instance variables.
Create a public instance method to get the user's age.
Ask the user their name as one question, but store it separately in first and last name variables.
As you ask the user their information, create a User object.
After asking each user their information, output the user's age.

Next
Move the functionality in your age method into a private method called, "calculateAge". This method will be called from the public age method.
Create a class variable that will count the number of users that enter in their information.
After you output the user's age, also output the number of user they are so far (using the class variable).
Loop to allow another user to enter their information. (exit when user enters \q for name). Create a User object for each user.
=end
require 'date'

class Person

  @@user_count = 0

  attr_reader :first_name
  attr_reader :last_name
  attr_accessor :bdate

  def initialize
    @@user_count += 1
  end

  def self.number_of_users
    @@user_count
  end

  def name(user_name)
    name_array = user_name.split
    @first_name = name_array[0]
    @last_name = name_array[1]
  end

  def age
    print "When is your birthday (enter in order YYYY-MM-DD)? "
    @bday = Date.parse($stdin.gets.chomp)
    calculateAge
  end

  private
  def calculateAge
    user_age = (Date.today - @bday).to_i / 365
  end

end

loop do
  user = Person.new
  print "What is your name? (enter \"q\" to quit) "
  user_name = gets.chomp
  break if user_name == "q"
  user.name(user_name)
  user_age = user.age
  puts "Your name is #{user_name}. You are user number #{Person.number_of_users} and your age is #{user_age}."
end
