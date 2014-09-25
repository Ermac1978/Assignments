# Take the string "Hello World" and split it on whitespace. Show two ways to do this.
string = "Hello World"
string.split
=> ["Hello", "World"]
string.split(/ /)
=> ["Hello", "World"]

# Use the Peter Piper tongue twister and split it on 'pick'
string = "Peter Piper picked a peck of pickled peppers. A peck of pickled peppers Peter Piper picked. If Peter Piper picked a peck of pickled peppers, Where's the peck of pickled peppers Peter Piper picked?"
string.split("pick")
=> ["Peter Piper ", "ed a peck of ", "led peppers. A peck of ", "led peppers Peter Piper ", "ed. If Peter Piper ", "ed a peck of ", "led peppers, Where's the peck of ", "led peppers Peter Piper ", "ed?"]

# Use gsub only to change the first passage to the second in the fewest amount of commands:
# Original: "You have brains in your head. You have feet in your shoes. You can steer yourself any direction you choose. You're on your own. And you know what you know. And YOU are the one who'll decide where to go..."
# Result: "I have brains in my head. I have feet in my shoes. I can steer myself any direction I choose. I'm on my own. And I know what I know. And I'M the one who'll decide where to go..."
string = "You have brains in your head. You have feet in your shoes. You can steer yourself any direction you choose. You're on your own. And you know what you know. And YOU are the one who'll decide where to go..."
string.gsub(/your/, "my").gsub(/you/i, "I").gsub(/'re/, "'m").gsub(/ are/,"'M")

# Write code to determine how many times 'sh' occurs in the following phrase:
# There once was a man who had a sister, his name was Mr. Fister. Mr. Fister's sister sold sea shells by the sea shore. Mr. Fister didn't sell sea shells, he sold silk sheets. Mr. Fister told his sister that he sold six silk sheets to six shieks. The sister of Mr. Fister said I sold six shells to six shieks too!
string = "There once was a man who had a sister, his name was Mr. Fister. Mr. Fister's sister sold sea shells by the sea shore. Mr. Fister didn't sell sea shells, he sold silk sheets. Mr. Fister told his sister that he sold six silk sheets to six shieks. The sister of Mr. Fister said I sold six shells to six shieks too!"
string.scan(/sh/).length
=> 8

# In the same phrase above, how many times does 'sh' occur when followed by an 'o'? Show the code.
string.scan(/sh(?=o)/).length
=> 1

# Match the word `foot` but not `football` in this phrase:
# He played football despite having an artificial foot.
string = "He played football despite having an artificial foot."
string.scan(/foot(?!ball)/)
=> ["foot"]

# Match the last `sits` in a phrase using this phrase:
# I saw Susie sitting in a shoe shine shop. Where she sits she shines, and where she shines she sits.
string = "I saw Susie sitting in a shoe shine shop. Where she sits she shines, and where she shines she sits."
string.scan(/sits(?!.*sits)/)
=> ["sits"]
