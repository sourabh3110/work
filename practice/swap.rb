class One
  def m1(a,b,c)
    puts "Super Class with one param"
  end

  def m1(a,b)
    puts "Super Class with two param"
  end

  def m1(a)
    puts "Super Class with three param"
  end
end

class Two < One
  def m1()
    puts "Child Class without param"
  end

  def m1(a,b,c,d)
    puts "Child Class with four param"
  end
end

ins = One.new()
ins.m1(1,2,3)

