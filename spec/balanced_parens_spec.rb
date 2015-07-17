require_relative '../balanced_parens'

describe ParenLinter do

  it "knows when there are too many opening brackets" do
    expect(ParenLinter.new("(()").balanced?).to eq false
  end

  it "knows when there are too many closing brackets" do
    expect(ParenLinter.new("())").balanced?).to eq false
  end

  it "knows when the expression is balanced" do
    expect(ParenLinter.new("(())").balanced?).to eq true
  end
end
