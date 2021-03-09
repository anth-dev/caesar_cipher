# spec/caesar_cipher_spec.rb
require './lib/caesar_cipher'

describe "#caesar_cipher" do
  it "shifts each character according to the shift factor" do
    expect(caesar_cipher("a", 1)).to eql("b")
  end
  it "works with mixed case strings" do
    expect(caesar_cipher("HeLlO", 2)).to eql("JgNnQ")
  end
  it "preserves punctuation in the encoded message" do
    expect(caesar_cipher("Hi!", 3)).to eql("Kl!")
  end
  it "can accept negative shifts to decode messages" do
    expect(caesar_cipher("Jgnnq.", -2)).to eql("Hello.")
  end
  it "can loop around the alphabet" do
    expect(caesar_cipher("xyz", 4)).to eql("bcd")
  end
  it "works with large positive shift factors" do
    expect(caesar_cipher("Hello, World!", 75)).to eql("Ebiil, Tloia!")
  end
  it "works with large negative shift factors" do
    expect(caesar_cipher("Ebiil, Tloia!", -75)).to eql("Hello, World!")
  end
end