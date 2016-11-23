De igual forma que no hay milanesas sin puré (perdón, teníamos hambre cuando escribimos este ejercicio :fork_and_knife:) , no hay objetos sin clases: todo objeto es instancia de una cierta clase, en la que se encuentran los métodos que el objeto puede evaluar. ¿O no?

No.

En Ruby los objetos también pueden tener métodos que le son totalmente propios, específicos para esa instancia y no compartidos con nadie más: _¡autométodos!_.

```ruby 
manuel_dario = Object.new
def manuel_dario.cantar_sobre(tema)
  tema + ', shalalala'
end

# ahora manuel_dario sabe cantar
manuel_dario.cantar_sobre 'guerra, muerte, destrucción'
# => 'guerra, muerte, destrucción, shalalala'
```

> Veamos si se entiende: 
