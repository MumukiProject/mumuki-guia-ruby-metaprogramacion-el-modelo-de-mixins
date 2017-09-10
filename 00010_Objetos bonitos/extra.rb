# ...content... #

class Coordenada
  include Pretty
  def initialize(latitud=0, longitud=0)
    @latitud = latitud
    @longitud = longitud
  end
   
  # nuestro mixin va a utilizar este método
  def pretty_attributes
    {latitud: @latitud, longitud: @longitud}
  end
end
