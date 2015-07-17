mystr = gets
name = "sakshi"
mystr = mystr.gsub(" ","")
print name 
print mystr
flag = mystr.casecmp(name)
print flag
if flag == 1
  print "hi" 
  print name
else 
  print "hello"
end
