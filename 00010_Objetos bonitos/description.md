Ahora te toca a vos: necesitamos un mixin `Pretty`, que provea un método `prettify` y haga la impresión de los objetos más bonita. Debe poder usarse así: 

```ruby
class Coordenada
  include Pretty
  def initialize
    @latitud = 0
    @longitud = 0
  end
   
  # nuestro mixin debe utilizar este método
  # para saber qué mostrar
  def pretty_attributes
    {latitud: @latitud, longitud: @longitud}
  end
end

Coordenada.new.prettify
# => "latitud: 0\nlongitud: 0"
```

> Desarrollá el mixin `Pretty`. Ya declaramos por vos la clase `Coordenada` para que puedas probar.