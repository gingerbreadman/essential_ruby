# require './challenge_1.rb'
# Line 1 effectively copy-pastes in any code you wrote in challenge_1.rb
# It's similar to connecting an external stylesheet to an HTML file.

def pmt(rate, term, bal)
  # Convert annual rate to monthly and make it decimal.
  r = rate / 1200

  # Numerator
  n = r * bal

  # Denominator
  d = 1 - (1 + r)**-term

  # Calc the monthly payment.
  pmt = n / d
end

# ===========
# CHALLENGE 2
# ===========

# Below is an array of hashes. Each hash in the array represents one rate quote from a bank.

loan_quotes = [
  { "bank" => "Elm Street Bank", "rate" => 0.013},
  { "bank" => "Oak Street Bank", "rate" => 0.009},
  { "bank" => "Ash Street Bank", "rate" => 0.011}
]

# Let's ask our user for the parameters of the loan:

puts "Enter the number of payments:"
term = gets.chomp.to_i

puts "Enter the loan amount:"
bal = gets.chomp.to_f

# Now, loop through the array of loan quotes using .each:
#   For each option, tell the user how much the monthly payment will be to that bank.
#   Re-use the pmt method that you defined in Challenge 1.

loan_quotes.each do |a| # will iterate through all the banks and rates
       # puts a["bank"] # will give the first bank
       # puts a["rate"] #will give the rate of the first bank
       puts pmt(a["rate"], term, bal)
end
