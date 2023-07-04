require './caesar-cipher.rb'

describe '#caesar_cipher' do 
  it 'encripts the example from The Odin Project' do 
    expect(caesar_cipher('What a string!', 5)).to eql('Bmfy f xywnsl!')
  end 

  it 'doesn\'t change the original case of the string' do 
    expect(caesar_cipher('wHaT a StRiNg!', 5)).to eql('bMfY f XyWnSl!')
  end 
end 