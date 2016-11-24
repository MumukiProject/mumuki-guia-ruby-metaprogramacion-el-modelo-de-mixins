La sintaxis para declarar métodos de clase es definitivamente parecida a la que utilizamos anteriormente para declarar métodos en la autoclase. ¡Y no es casualidad!

Las clases, como casi todo en Ruby, son objetos. Y además, son únicos: no hay dos clases `Mascota`, por ejemplo. Y vimos que cuando tenemos objetos así, podemos agregarles comportamiento directamente mediante los autométodos. Moralejas: 

1. `def self.foo` es un autométodo
2. dentro de una declaración de clase, `self` es el objeto que representa la clase
3. los métodos de clase son autométodos de la clase. (Sí, tu cabeza ya puede explotar :no_mouth::boom:)

Por todo esto es que muchas veces vas a ver métodos de clase...

```ruby 
class Foo
  def self.foo
  end
end
```

declarados de esta forma: 

```ruby
class Foo
  class << self
    def foo
    end
  end
end
```