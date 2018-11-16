require('rspec')
require('scrabble')
require('pry')

describe('#scrabble') do
  it("it returns a scrabble score for a letter")do
    word1 = Word.new("a")
    expect(word1.scrabble()).to(eq([1]))
  end
