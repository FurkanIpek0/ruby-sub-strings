def substrings(string,dictionary)
  dictionary.reduce(Hash.new(0)) do |result,word|
    string.split(" ").each do |char|
      if char.include?(word)
        result[word] += 1
      end
    end
    result
  end
end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

puts substrings("Hdowndy", dictionary)