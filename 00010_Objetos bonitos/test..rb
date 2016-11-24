class Sample
  include Pretty
  
  def pretty_attributes
    {foo: 3, bar: 5, goo: 6}
  end
end

describe 'Pretty' do 
  it { expect(Coordenada.new.prettify).to eq "latitud: 0\nlongitud: 0" }
  it { expect(Coordenada.new(20, 30).prettify).to eq "latitud: 20\nlongitud: 30" }
  it { expect(Sample.new.prettify).to eq "foo: 3\nbar: 5\ngoo: 6" }
end

