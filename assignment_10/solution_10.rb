print "Please enter any phrase you want: "
phrase = $stdin.gets.chomp
puts phrase.strip!
puts phrase.reverse.chop.reverse

how_many_words = phrase.scan(/\w+/).length
puts "Original text had #{how_many_words} words."
