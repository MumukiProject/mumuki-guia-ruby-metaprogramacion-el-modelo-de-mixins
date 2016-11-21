La sintaxis para declarar métodos de clase es definitivamente parecida a la que utilizamos anteriormente para declarar métodos en la autoclase. ¡Y no es casualidad!

* es la clase


```ruby 
class Foo
  def self.foo
  end
end

class Foo
  class << self
    def foo
    end
  end
end

```