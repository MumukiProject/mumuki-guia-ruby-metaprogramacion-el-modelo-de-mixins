En Ruby, además de herencia, tenemos mixins: una forma flexible de reutilizar código, que nos es útil cuando queremos agregar el mismo método a clases en jerarquías de herencia diferentes. 

Por ejemplo, en nuestro problema de guerreros, murallas y magos, podríamos hacer lo siguiente: 

```ruby
# module en Ruby nos permite declarar mixins
module Defensor
  def defender_de!(enemigo)
    #...
  end
end

module Atacante
  def atacar!(enemigo)
    #...
  end
end

class Mago < Unidad
end

class Guerrero < Unidad
  # include Defensor nos permite declarar que Guerrero, además de sus propios métodos y los de Unidad, 
  # tiene los métodos definidos en el mixin Defensor
  include Defensor
  include Atacante
end

class Muralla < Unidad
  include Defensor
end
```
