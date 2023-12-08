class AbstractFactory
  def create_product
    raise NotImplementedError, "#{self.class} has not implemented method '#{__method__}'"
  end
end

class ConcreteFactory < AbstractFactory
  def create_product
    ConcreteProduct.new
  end
end

class AbstractProduct
  def function
    raise NotImplementedError, "#{self.class} has not implemented method '#{__method__}'"
  end
end

class ConcreteProduct < AbstractProduct
  def function
    'The result of the product'
  end
end

if __FILE__ == $0
  puts 'Testing factory:'
  factory = ConcreteFactory.new
  product = factory.create_product
  puts product.function
end
