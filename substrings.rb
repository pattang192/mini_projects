# substrings.rb

dictionary = %w[below down go going horn how howdy it i low own part partner sit]

def substrings(string, dictionary)
  matches = Hash.new(0)
  string.downcase.split.each do |substring|
    dictionary.each do |word|
      matches[word] += 1 if substring.include?(word)
    end
  end
  matches
end

substrings('below', dictionary)
substrings("Howdy partner, sit down! How's it going?", dictionary)
