require('rspec')
require('anagrams_antigrams')
require('pry')

describe('#anagram?') do
  it("it checks to see if two words are the same") do
    test1 = Test.new("cat", "cat")
    expect(test1.anagram?()).to(eq('these are the same word'))
  end

  it("it checks to see if two words are different") do
    test1 = Test.new("cat", "dog")
    expect(test1.anagram?()).to(eq('these are not the same word'))
  end

  it("it checks to see if two words are anagrams")
    test1 =Test.new("eat", "tea")
    expect(test1.anagram?()).to(eq('these words are anagrams'))
end
