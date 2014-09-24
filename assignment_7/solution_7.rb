if ARGV.size == 0
   print print "What is your name? "
   name = $stdin.gets.chomp
   puts "Happy Birthday #{name}! "
else

   puts "Happy Birthday #{ARGV[0]}."
end
