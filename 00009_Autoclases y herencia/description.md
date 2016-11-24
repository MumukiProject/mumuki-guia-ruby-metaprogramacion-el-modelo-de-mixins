Un interrogante que no respondimos es cómo se llevan las autoclases con las clases. Supongamos este código:

```ruby
class X
  def m1
    'a'
  end
  
  def m2
    'b'
  end
end

x = X.new
def x.m1
   'c'
end
```

¿Qué se imprime si hacemos `x.m1`? ¿Y `x.m2`? Veamos: 

```ruby
ム x.m1
'c'
ム x.m2
'b`
```

Las autoclases se meten dentro de la jerarquía de herencia: **la autoclase de una instancia siempre es subclase de la clase de dicha instancia**. 

_¿¿¿Lo que??? :confused:_

Bueno, ahí va un diagrama de clases :sweat_smile:

<!---
@startuml
class X {
  m1()
  m2()
}


class AutoclaseDeX { 
  m1()
}

X <|- AutoclaseDeX
@enduml
--->
<img src="http://www.plantuml.com/plantuml/png/Iyv9B2vMY52evb9Go3NKq0HHHa2gbekBAnaivrXQaWzYfRga0fKfmDG15KGesDJeeiW30000"> 


Esto permite que buscar el método a ejecutar siga siendo fácil: basta con inseccionar la autoclase, y luego sus clases padres. 


> Proba el código anterior en la consola

