require('rspec')
require('anagrams_antigrams')
require('pry')

describe('#anagram') do
  it("it checks to see if two words are the same")do
    test1 = Test.new("cat", "cat")
    expect(anagram?()).to(eq('these are the same word'))
  end
end
