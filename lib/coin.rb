class Fixnum
define_method(:coin) do

  final_array = []
  initial_amount = self

#QUARTERS
  quarter_amount = initial_amount
  quarter_counter = 0

  while quarter_amount / (25) >= 1
    quarter_amount = quarter_amount - 25
    quarter_counter = quarter_counter + 1
  end
  final_array.push(quarter_counter)

#DIMES
  quarter_amount = initial_amount
  quarter_used = quarter_counter * 25
  dimes_amount = quarter_amount - quarter_used
  dimes_counter = 0

  while dimes_amount / (10) >= 1
    dimes_amount = dimes_amount - 10
    dimes_counter = dimes_counter + 1
  end
  final_array.push(dimes_counter)

#NICKELS
  dimes_amount = initial_amount
  dimes_used = dimes_counter * 10
  nickels_amount = dimes_amount - dimes_used - quarter_used
  nickels_counter = 0

  while nickels_amount / (5) >= 1
    nickels_amount = nickels_amount - 5
    nickels_counter = nickels_counter + 1
  end
  final_array.push(nickels_counter)

#PENNIES
nickels_amount = initial_amount
nickels_used = nickels_counter * 5
pennies_amount = nickels_amount - nickels_used - dimes_used - quarter_used
pennies_counter = 0

while pennies_amount / (1) >= 1
  pennies_amount = pennies_amount - 1
  pennies_counter = pennies_counter + 1
end
final_array.push(pennies_counter)
end
end





# class Fixnum
#   define_method(:coin) do
#     initial_amount = self
#     amount = self
#     counter = 0
#     while amount / (25) >= 1
#       amount = amount - 25
#       counter = counter + 1
#     end
#     counter
#   end
#     dimes_remainder = initial_amount - (counter * 25)
#     counter = 0
#     while dimes_remainder / (10) >= 1
#       dimes_remainder = dimes_remainder - 10
#       counter = counter + 1
#     end
#     counter
#   end
# end
