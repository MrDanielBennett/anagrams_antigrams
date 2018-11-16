class Test
  def initialize(word1, word2)
    @word1 = word1.downcase
    @word2 = word2.downcase
    @word1 = @word1.gsub(/\s+/, "")
    @word2 = @word2.gsub(/\s+/, "")
    @array1 = @word1.split('')
    @array2 = @word2.split('')
  end

  def realword?
    array1 = @array1
    array2 = @array2
    vowel_array = ['a', 'e', 'i', 'o', 'u', 'y']
    if vowel_array - array1 == vowel_array
      return "please enter a real word."
    elsif vowel_array - array2 == vowel_array
      return 'please enter a real word.'
    else
      return
    end
  end

  def anagram?
    array1 = @array1
    array2 = @array2
    if array1 == array2
      return "these are the same word."
    elsif array1.all? {|i| array2.include?(i)}
      return 'these words are anagrams.'
    elsif array1.none? {|i| array2.include?(i)}
      return "these words are antigrams."
    else
      return "this combo is neither anagrams or antigrams."
    end
  end
end
