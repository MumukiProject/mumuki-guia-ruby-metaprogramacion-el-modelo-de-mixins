Cuando declaramos un autométodo, en realidad... ¡no lo estamos agregando al objeto! :unamused:

Entre bambalinas estamos abriendo una clase especial, propia y exclusiva de ese objeto, que tiene como principal fin ser el repositorio de los autométodos: la *autoclase* (en inglés: _eigenclass_ o _singleton class_).

Es decir, este programa...


```ruby
manuel_dario = Object.new

def manuel_dario.cantar_sobre(tema)
  tema + ', shalalala'
end
```

...es equivalente a éste: 

```ruby
manuel_dario = Object.new

class << manuel_dario
  def manuel_dario.cantar_sobre(tema)
    tema + ', shalalala'
  end
end
```

Donde `class << manuel_dario ... end` es la forma de abrir a la autoclase de `manuel_dario` .

> Veamos si se va entendiendo hasta aca: ¿para que nos sirve `def`?

