def substrings(string, dictionary)
   found = Hash.new(0) 
   check = string.split(/\W+/)
   check.map{|check| dictionary.map{ |x| if check.include? x
    found[x] += 1
   end
   }}
   return found
end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

substrings("below", dictionary)

substrings("Howdy partner, sit down! How's it going?", dictionary)