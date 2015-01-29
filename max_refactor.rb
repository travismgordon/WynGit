#max_refactor.rb
#this refactors the max method to accept any number of arguments and find the greatest number

#defining the method
def max(x, *rest)
	puts ([].push(x, rest)).flatten.sort.last
end

#testing the method
def test_max
  p max(2,1)
  p max(1,2)
  p max(1,1)
  p max(-1, 0)
  p max(-1, -2)
  p max(-1, 1)
  p max(2.0, 1.0)
  p max(1.0, 2.0)
  p max(1.0, 1.0)
  p max(-1.0, 0.0, 5.0)
  p max(-1.0, -2.0, 7, 4.1)
  p max(-1.0, 1.0, -22, 3.1, -8, 42)
 
#disabled tests, assuming numerical input
  # p max(nil, nil)
  # p max({}, {})
  # p max([], [])

  # p max(false, false)
  # p max("", "")
end

test_max
