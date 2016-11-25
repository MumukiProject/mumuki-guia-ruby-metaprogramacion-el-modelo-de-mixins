Supongamos que en un juego tenemos las siguientes clases: 

<img src="http://www.plantuml.com/plantuml/png/VP2z3eCm38JtF8MxmK2Ue7idHkRgchWeKWYI4wQsxqvew0z5wcQVlZkVR3nYf7OIU0-wAIBBLmwMvMpvK77WmVLZdNMjTLMJUkHHALDiBZh_D271GFPynbVsDB48o_ZtnYxcRM_H5-id5vUO12PH8RhWBEmFiuh7UzCi2PjzAVyjl1fkeFAO6G00">
</img>

<!--
@startuml
class Muralla {
  defender_de!(enemigo)
  ...() 
}
  

class Misil {
  atacar!(enemigo)
  ...()
}

class Guerrero {
  defender_de!(enemigo)
  atacar!(enemigo)
}

class Mago {
   ...()
}

abstract class Unidad {
   ...()
}

Unidad <|--Mago
Unidad <|--Misil
Unidad <|--Guerrero
Unidad <|--Muralla
@enduml
-->

Como vemos, tenemos guerreros, murallas, magos y misiles:

* las murallas entienden `defender`, pero no `atacar`
* los guerrero entienden `atacar`, pero no `defender`
* los magos no atacan ni defienden
* los guerreros atacan y defienden

Pero esto nos trae un problema: si los métodos `atacar` y `defender` son muy parecidos, o incluso iguales, ¿dónde los ponemos? :thought_balloon:

> Seleccioná cuales de las siguientes afirmaciones son correctas
