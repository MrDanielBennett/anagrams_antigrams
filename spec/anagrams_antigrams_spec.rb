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
    expect(test1.anagram?()).to(eq('please enter a real word'))
  end

  # it("it checks to see if two words are different") do
  #   test1 = Test.new("cat", "dog")
  #   expect(test1.anagram?()).to(eq('these are not the same word'))
  # end

end
