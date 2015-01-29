# haystack is an array
# needle is an item that may or may not be in the Array
# finds the needle in the haystack and returns it
def find_needle(haystack, needle)
  i = 0
  loop do
    if haystack[i] == needle
      return i
    elsif i > haystack.length
      return nil
    end
    i += 1
  end
end

def find_needle2(haystack, needle)
  i = 0
  found = nil
  loop do
    if haystack[i] == needle
      found = i
    elsif i > haystack.length
      break
    end
    i += 1
  end
  found
end

puts find_needle((0..1000000).to_a, 500000)
puts find_needle2((0..1000000).to_a, 500000)