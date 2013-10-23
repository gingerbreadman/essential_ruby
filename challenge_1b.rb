# ===========
# CHALLENGE 1
# ===========

# Suppose we are building a loan payment calculator.

# Define a method called "pmt" which will accept three arguments:
#  - interest rate
#  - number of payments
#  - principal value of loan
# The method should return the size of each payment given these three things.
# Before we can teach the computer how to automate a task,
#   we usually have to do some research on how the task is done:
#   http://en.wikipedia.org/wiki/Mortgage_calculator

# =========================================
# Your code to define the method goes here.
# =========================================

print "Enter loan amount: "

loan = gets.chomp.to_i

print "Enter for duration in months: "

time = gets.chomp.to_i

print "Enter the interest rate: "

rate = gets.chomp.to_f/100

i = (1+rate/12)**(12/12)-1

annuity = (1-(1/(1+i))**time)/i

payment = loan/annuity

puts "\n$%.2f per month" % [payment]



# def pmt(interest_rate, number_of_payments, present_value)
#
# end
#
# n = { "first_name" => "Neil", "last_name" => "Hartz" }
#
# ruputs "Your monthly payment will be #{pmt(0.01, 60, 30000)}."
