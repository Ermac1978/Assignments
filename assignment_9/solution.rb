#string "Hello World" and split it on whitespace.
str = "Hello World"
"Hello World".split

# Use the Peter Piper tongue twister and split it on 'pick'
str = "Peter Piper picked a peck of pickled peppers.A peck of pickled peppers Peter Piper picked.If Peter Piper picked a peck of pickled peppers,Where's the peck of pickled peppers Peter Piper picked?"
str.split("pick")

# Use gsub only to change the first passage to the second in the fewest amount of commands:
# Original: "You have brains in your head. You have feet in your shoes. You can steer yourself any direction you choose. You're on your own. And you know what you know. And YOU are the one who'll decide where to go..."
=begin
 using .gsub I Change all the "you" - "I",
 "your"-"my",
 "yourself"-"myself",
 "you're"-"I'm" and "YOU"-(I'M)
=end
# Answer: string.gsub(/your(?!self)/, "my").gsub(/your(?=self)/, "my").gsub(/you/, "i").gsub(/You're/, "I'm").gsub(/You/, "I").gsub(/YOU are/, "I'M")
# Result: "I have brains in my head. I have feet in my shoes. I can steer myself any direction I choose. I'm on my own. And I know what I know. And I'M the one who'll decide where to go..."

# Write code to determine how many times 'sh' occurs in the following phrase:
# There once was a man who had a sister, his name was Mr. Fister. Mr. Fister's sister sold sea shells by the sea shore. Mr. Fister didn't sell sea shells, he sold silk sheets. Mr. Fister told his sister that he sold six silk sheets to six shieks. The sister of Mr. Fister said I sold six shells to six shieks too!
# scanned the string for "sh" and showed me all "sh" but also counted it w/.coount
string.scan(/sh/).count

# In the same phrase above, how many times does 'sh' occur when followed by an 'o'? Show the code.
=begin
scanned the string for "sh" and showed me all "sh" but also counted it w/.count
(?=o) allowed me to only count "sh" followed by "o"
=end
string.scan(/sh(?=o)/).count

# Match the word `foot` but not `football` in this phrase:
# Scanned the string for foot but ?= ignored the ball
string.scan(/foot(?=ball)/)

# Match the last `sits` in a phrase using this phrase:
# I saw Susie sitting in a shoe shine shop. Where she sits she shines, and where she shines she sits.
string.scan(/sits/).last
