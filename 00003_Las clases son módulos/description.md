¿Y por qué Ruby le dice `module` a los mixins? ¿Porque [matz](https://es.wikipedia.org/wiki/Yukihiro_Matsumoto) era mal tipo? 

No, se trata de que los módulos cumplen varias funciones, y sólo una de ellas es la de mixin. Otra es la de servir como generalización de las clases: el comportamiento de las clases y módulos está representando en las clases `Class` y `Module`, respectivamente, y `Class` hereda de `Module`: 

<img src="http://www.plantuml.com/plantuml/png/Iyv9B2vMS0QJrLmA2dfwUXgQN5orN5p9O37V_9JId5I5QWMu750AAcXJemlH2G00"> 

> La diferencia principal entre las clases y módulos es que los módulos no se pueden instanciar. Comprobalo ejecutando estas consultas: 
> 
> * `ム Module.instance_methods.include? :new`
> * `ム Class.instance_methods.include? :new`
> 
> No te preocupes si no te queda del todo claro qué hacen estas consultas, porque lo explicaremos en detalle más adelante :wink: 

