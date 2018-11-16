class Test
  def initialize(word1, word2)
    @word1 = word1
    @word2 = word2
  end

  def anagram?
  array1 = @word1.split('')
  array2 = @word1.split('')

  if array1 == array2
    return "these are the same word"
  # elsif array1 != array2
  #   return "these are not the same word"
  end
  end
end
