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

puts "Your monthly payment will be #{pmt(0.01, 60, 30000)}."
