# This program prints numbers 1 to 100. 
# But for multiples of 3 it prints "Fizz" instead of the number 
# and for the multiples of 5 it prints "Buzz" instead of the number. 
# For numbers which are multiples of both 3 and 5m it prints "FizzBuzz".


(1..100).each {|n|
	if (n % 3 == 0 && n % 5 == 0)
		puts "FizzBuzz"
	elsif n % 3 == 0
		puts "Fizz"
	elsif n % 5 == 0
		puts "Buzz"
	else
		puts n
	end
}