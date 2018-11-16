require('rspec')
require('anagrams_antigrams')
require('pry')

describe('#anagram?') do
  it("it checks to see if two words are the same") do
    test1 = Test.new("cat", "cat")
    expect(test1.anagram?()).to(eq('these are the same word'))
  end
  it("it checks to see if two words are anagrams") do
    test1 = Test.new("race", "care")
    expect(test1.anagram?()).to(eq('these words are anagrams'))
  end
  it("it checks to see if two words are actually 'words'(contain a vowel)") do
    test1 = Test.new("hjl", "ljh")
    expect(test1.realword?()).to(eq('please enter a real word'))
  end
  it("it lowercases all letters") do
    test1 = Test.new("Cat", "CAT")
    expect(test1.anagram?()).to(eq('these are the same word'))
  end
  it("it checks to see if two words are antigrams") do
    test1 = Test.new("world", "cat")
    expect(test1.anagram?()).to(eq('these words are antigrams'))
  end
  it("it checks to see if multiple words will pass the test") do
    test1 = Test.new("cat man", "mancat")
    expect(test1.anagram?()).to(eq('these words are anagrams'))
  end
end
