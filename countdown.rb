#this is a countdown from ten new years timer
def countdown(n = 10, *rest)
	(0..11) .to_a.reverse.each do |n|
		if n >= 1
			puts n - 1
			sleep 1
		elsif n == 0
			puts "* Happy New Year! *\x07"
		end
	end
end

15.times {countdown}
