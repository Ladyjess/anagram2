class String
  define_method(:anagram) do |word_list|
    anagrams = []
    word_list.each() do |word|
      if self.split('').sort.join.downcase == word.split('').sort.join.downcase
        anagrams.push(word)
      end
    end
    if anagrams.length() == 0
      return "Please try again"
    else
      anagrams
    end
  end
end
