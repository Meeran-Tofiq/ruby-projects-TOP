dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

def substrings(str, arr)
    arr.reduce(Hash.new(0)) do |result, subs|
        str.downcase.split(" ").each do |word|
            if word.include?(subs)
                result[subs] += 1
            end
        end
        result
    end
end

puts substrings("Howdy partner, sit down! How's it going?", dictionary)