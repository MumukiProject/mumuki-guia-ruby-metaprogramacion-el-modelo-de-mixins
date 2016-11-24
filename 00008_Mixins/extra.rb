class Unidad
end

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
  include Defensor
  include Atacante
end

class Muralla < Unidad
  include Defensor
end