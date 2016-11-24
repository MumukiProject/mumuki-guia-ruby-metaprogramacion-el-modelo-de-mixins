Ya sabemos definir métodos en las instancias, las clases, los mixins y las autoclases: siempre que definamos métodos en estos lugares, serán las instancias los que entenderán los mensajes correspondientes. 

¿Ahora bien, y si queremos que sea **la clase** la que entienda un cierto mensaje? ¿Cómo hace, por ejemplo, la clase `Time` para entender el mensaje el mensaje `now` (`Time.now`)?

Definiendo **métodos de clase**: 

```ruby
class Time
  # notá el self delante del now
  def self.now
    # ...
  end
end
```

> Veamos si se entiende: agregá a la clase `Array` el método `zeros`, que devuelve un array formado por n `0`s: 
> 
> ```ruby
> ム Array.zeros(10)
> => [0, 0, 0, 0, 0, 0, 0, 0, 0, 0]
> ```

