class String
  define_method(:anagram) do |word_list|
    word_array = []
    anagram_array = []

    word_list.each() do |word|
      word_array = word.downcase.split(//)
      if word_array.all? { |char| self.downcase.include?(char) }
        anagram_array.push(word)
      end
    end
    
    if anagram_array.length() == 0
      return "Please try again"
    else
      anagram_array
    end
  end
end
