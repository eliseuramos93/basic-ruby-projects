def count_substrings(string, dictionary)
  lowercase_text = string.downcase
  substring_count = Hash.new(0)
  dictionary.each do |word|
    matches = lowercase_text.scan(word.downcase).size
    substring_count[word] += matches unless matches == 0
  end
  substring_count
end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
p count_substrings("Howdy partner, sit down! How's it going?", dictionary)