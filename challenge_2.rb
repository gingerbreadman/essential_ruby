# Line 1 effectively copy-pastes in any code you wrote in challenge_1.rb
# It's similar to connecting an external stylesheet to an HTML file.

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
       puts a["bank"].to_s  # will give the first bank
       puts a["rate"].to_s #will give the rate of the first bank
       # now call the pmt function to get the pmt for each bank

    require './challenge_1a.rb'

end
