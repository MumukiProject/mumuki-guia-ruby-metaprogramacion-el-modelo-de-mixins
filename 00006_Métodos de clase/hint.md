Este problema se puede resolver de varias formas: 

* Empleando el mensaje `*` que también entienden los arrays:  `["hola"] * 2`
* Empleando el mensaje `new` que entiende la clase array: `Array.new(2, "hola")`
* Empleando el mensaje `times` que entiende la clase array: `2.times.map { "hola" }`