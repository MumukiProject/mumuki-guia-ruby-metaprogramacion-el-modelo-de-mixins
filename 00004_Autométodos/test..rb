describe 'pomelo' do 
  it('pomelo.rocanrol 0') { expect(pomelo.rocanrol 0).to eq 'Rocanrol, nnn' }
  it('pomelo.rocanrol 1') { expect(pomelo.rocanrol 1).to eq 'Rocanrol, nennn' }
  it('pomelo.rocanrol 2') { expect(pomelo.rocanrol 2).to eq 'Rocanrol, nenennn' }
  it('pomelo.rocanrol 3') { expect(pomelo.rocanrol 3).to eq 'Rocanrol, nenenennn' }
  it('pomelo.rocanrol 4') { expect(pomelo.rocanrol 4).to eq 'Rocanrol, nenenenennn' }
end