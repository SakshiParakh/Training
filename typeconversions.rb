=begin
1 .to_i 
  "12" - 12
  12.5 - 12
  nil - 0
2 .to_f
  "12" - 12.0
  12  - 12.0
  nil - 0.0
3 ."12" .to_i = 12
   "13" .to_f = 13.5
   "14" .to_r = (14/1)
   "6" .to_c = (6+0i)
=end
mystr = 234
print mystr.to_s
