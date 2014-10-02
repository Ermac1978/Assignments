#!/usr/bin/ruby
# Note for this exercise, follow these simplified pig latin rules
# If the first letter is a vowel, add "way" to the end
# If the first letter is a consonant, move it to the end and add "ay"

def pigatize(passed_text)
  if starts_with_vowel(passed_text[0])
    pigatized_text = passed_text + "way"
  else
    pigatized_text = passed_text[1..-1] + passed_text[0].downcase + "ay"
  end
  return pigatized_text
end

def starts_with_vowel(first_letter)
  return ["a", "e", "i", "o", "u"].include?(first_letter)
end

loop do
  puts "Please enter a word and I will translate to pig latin"
  text = gets.chomp
  break if text.length == 0
  puts pigatize(text)
end
