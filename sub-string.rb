def substrings(string,dictionary)
  dictionary.reduce(Hash.new(0)) do |result,word|
    result[word] += 1 if string.include?(word)
    result
  end
end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

puts substrings("below", dictionary)