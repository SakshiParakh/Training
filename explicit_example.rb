def calculate
  yield
end

lam = lambda{ p "hello"}
calculate &lam

#prc = Proc.new{p "hello"}
#calculate prc

#calculate{|a| p a}

lam = lambda{|x| puts x}
lam.call(3)
#lam.call(1,2,3)

pro = Proc.new{|x| p x}
#pro.call(1,2,31,2,31,2,3)
pro.call

def lambda_test
  lam = lambda{return}
  lam.call()
  p "hello"
end

lambda_test

def proc_test
  pro = Proc.new{return}
  pro.call()
  p "hello"
end

proc_test

