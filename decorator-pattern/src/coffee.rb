require "#{File.dirname(__FILE__)}/decorator"

class Coffee
  def cost
    2
  end
 
  def taste
    p "taste good!"
  end
end
 
class Milk
  include Decorator
  def cost
    @decorated.cost+0.4
  end
end
 
class Whip
  include Decorator
  def cost
    @decorated.cost+0.2
  end
end
 
my_coffee = Whip.new(Milk.new(Coffee.new))
p my_coffee.cost;
p my_coffee.kind_of?Coffee
my_coffee.taste
