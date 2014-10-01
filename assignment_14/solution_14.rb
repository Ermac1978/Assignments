#!/usr/bin/ruby
# Note for this exercise, follow these simplified pig latin rules
# If the first letter is a vowel, add "way" to the end
# If the first letter is a consonant, move it to the end and add "ay"

def starts_with_vowel(text)
  if text [0] = /[aeiou]/i
    return true
  else
    return false
  end
end


def pigatize(text)
  if starts_with_vowel(text)
    pigatized_text = text + "way"
  else
  end
  return pigatized_text
end


loop do
  puts "Please enter a word and I will translate to pig latin"
  text = gets.chomp
  break if text.length == 0
  puts pigatize(text)
end
