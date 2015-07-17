mystr = "up to the mark of is  the sakshi the the "
word = "the"
position = mystr.index(word)
puts position 
position = mystr.index(word , -position)
puts position

flag = mystr.scan(word)
print flag

