class X
  def m1
    'a'
  end
  
  def m2
    'b'
  end
end

x = X.new
def x.m1
   'c'
end