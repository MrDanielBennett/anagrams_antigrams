class Test
  def initialize(word1, word2)
    @word1 = word1.downcase
    @word2 = word2.downcase
  end

  def realword?
  array1 = @word1.split('')
  array2 = @word2.split('')


  vowel_array = ['a', 'e', 'i', 'o', 'u', 'y']
  if vowel_array - array1 == vowel_array
    return "please enter a real word"
  elsif vowel_array - array2 == vowel_array
    return 'please enter a real word'
  else
    return array1
    return array2
  end
end

def anagram?
  array1 = @word1.split('')
  array2 = @word2.split('')
  if array1 == array2
    return "these are the same word"
  elsif array1.all? {|i| array2.include?(i)}
    return 'these words are anagrams'


  end
end
end
