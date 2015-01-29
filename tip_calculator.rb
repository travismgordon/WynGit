#this is a basic bill share and tip calculator

#some basic default values
bill = 20
tip_percent = 0.20
num_people = 2

#getting the bill total from user
puts "What is the total bill?"
puts "(enter the bill amount including tax, with no dollar sign)"
bill = gets.chomp.to_f

#getting the tip percentage from user
puts "What percent tip would you like to add?"
puts "(enter a whole number, i.e. 20 not 0.20)"
tip_percent = gets.chomp.to_f
tip_percent /= 100.00

#getting the number of people from user
puts "How many people are splitting the bill?"
puts "(enter a number, enter '1' to only calculate tip)"
num_people = gets.chomp.to_i

#final calculations of tip and bill split share
tip =  bill * tip_percent
total = bill + tip
bill_share = (total / num_people)

#formatting the output
bill_share = format('%.2f', bill_share) 

#output line to user
puts "Your share of the bill is $#{bill_share}."