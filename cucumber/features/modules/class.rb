$LOAD_PATH << '.'
require "FIRSt"
require "SECOND"

class Collect
  include First
  include Second

  def method_one
    super
    puts "method_one of class"
  end
end

obj = Collect.new
obj.method_one