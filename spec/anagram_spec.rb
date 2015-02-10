require('rspec')
require('anagram')

describe('String#anagram') do
  it("user inputs a word and a list of other words. It returns a list of words that are angarams") do
    expect("cat".anagram(["Act","tAc", "sad"])).to(eq(["Act","tAc"]))
  end

  it("if word or words are not anagrams, a message is displayed") do
    expect("cat".anagram(["acting","touch", "sad"])).to(eq("Please try again"))
  end

  it("if word or words are not anagrams, a message is displayed") do
    expect("cat".anagram([])).to(eq("Please try again"))
  end
end
