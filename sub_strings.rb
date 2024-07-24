def substrings(string, dictionary)
  string_to_array = string.downcase.split

  dictionary.reduce(Hash.new(0)) do|return_hash, word| 
    return_hash[word] += string_to_array.select do |string| 
                                                string.include?(word) 
                                                end.length
return_hash 
end.reject {|key, value| value == 0}

end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

p substrings("Howdy partner, sit down! How's it going?", dictionary)