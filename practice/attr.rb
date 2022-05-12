# class Person
#   def name
#     @name
#   end

#   def name=(str)
#     @name = str
#   end
# end

# person = Person.new
# person.name = 'Dennis'
# p person.name

class Reader
  attr_reader :name
  def me(name)
    @name = name
  end
end

class Writer
  attr_writer :name
  def me(name)
    @name = name
  end
end

class Accessor
  attr_accessor :name
end

a =  Reader.new
a.me('rathore')
p a.name

p a =  Writer.new.name = 'sourabh'
