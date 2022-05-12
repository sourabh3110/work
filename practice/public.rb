require_relative 'protacted'
class PublicClass < PrivateClass

  def fetchProctedMethod
    protactedM
  end

  def fetchPrivateMethod
    PrivateM
  end
end

m = PublicClass.new
m.fetchProctedMethod
m.fetchPrivateMethod