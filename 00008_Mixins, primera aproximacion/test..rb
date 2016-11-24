describe "Misil" do 
  it("Misil debe ser declarado como una clase") { expect(Misil.is_a? Class).to be true }
  it("Misil debe heredar de unidad") { expect(Misil.superclass).to be Unidad }
  it("Misil debe ser incluir el mixin Atacante") { expect(Misil.include? Atacante).to be true }
  it("Misil NO debe ser incluir el mixin Defensor") { expect(Misil.include? Defensor).to be false }
end