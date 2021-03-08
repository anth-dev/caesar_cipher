# spec/caesar_cipher_spec.rb

describe "#caesar_cipher" do
  it "shifts each character according to the shift factor" do
    expect(caesar_cipher("a", 1)).to eql("b")
  end
end