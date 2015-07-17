require_relative "../dictionary"

describe Dictionary do

  it "find matches for keys" do
    expect(Dictionary.new(1,2,3).search(:one)).to eq 1
  end

  it "returns null with no matches" do
    expect(Dictionary.new(1,2,3).search(:four)).to eq nil
  end

  it "inserts new items" do
    d = Dictionary.new(1,2,3)
    d.insert(4)
    expect(d.search(:four)).to eq 4
  end

  it "deletes items" do
    d = Dictionary.new(1,2,3)
    d.delete(1)
    expect(d.search(:one)).to eq 1
  end

end
