module Decorator
  def initialize(decorated)
    @decorated = decorated
  end
 
  def method_missing(method,*args)
    # empty? is a method; ?: is a tri-operator
    args.empty? ? @decorated.send(method):@decorated.send(method,args)
  end
 
  # Decorator does not change the nature of object it decorates;
  def kind_of?(name)
    @decorated.kind_of?name
  end
end
