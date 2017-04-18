require("rspec")
require("scrabble")
describe("scrabble#scrabble_score") do
  it("returns a scrabble score for a letter") do
    expect("a".scrabble_score()).to(eq(1))
  end
  it("returns correct score regardless of letter") do
    expect("j".scrabble_score).to(eq(8))
  end
  it("returns correct unsummed score of simple letters") do
    expect("al".scrabble_score).to(eq(2))
  end
  it("returns correct score of sum of simple letters") do
    expect("al".scrabble_score).to(eq(2))
  end
end
