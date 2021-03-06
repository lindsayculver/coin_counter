class Fixnum
define_method(:coin) do

  final_array = []
  words_array = ["quarter(s)", "dime(s)", "nickel(s)", "penn(ies)"]
  initial_amount = self

#QUARTERS
  quarter_amount = initial_amount
  quarter_counter = 0

  while quarter_amount / (25) >= 1
    quarter_amount = quarter_amount - 25
    quarter_counter = quarter_counter + 1
  end
  final_array.push(quarter_counter, "quarter(s),")

#DIMES
  quarter_amount = initial_amount
  quarter_used = quarter_counter * 25
  dimes_amount = quarter_amount - quarter_used
  dimes_counter = 0

  while dimes_amount / (10) >= 1
    dimes_amount = dimes_amount - 10
    dimes_counter = dimes_counter + 1
  end
  final_array.push(dimes_counter, "dime(s),")

#NICKELS
  dimes_amount = initial_amount
  dimes_used = dimes_counter * 10
  nickels_amount = dimes_amount - dimes_used - quarter_used
  nickels_counter = 0

  while nickels_amount / (5) >= 1
    nickels_amount = nickels_amount - 5
    nickels_counter = nickels_counter + 1
  end
  final_array.push(nickels_counter, "nickel(s),")

#PENNIES
  nickels_amount = initial_amount
  nickels_used = nickels_counter * 5
  pennies_amount = nickels_amount - nickels_used - dimes_used - quarter_used
  pennies_counter = 0

  while pennies_amount / (1) >= 1
  pennies_amount = pennies_amount - 1
  pennies_counter = pennies_counter + 1
  end
  final_array.push(pennies_counter, "penn(ies)")
  final_array.join(" ")
  end
end
