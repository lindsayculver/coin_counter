# counter = 1
# until counter.==(50)
#   puts "quarter"
#   counter = counter.+(25)
# end
#
class Fixnum
  define_method(:coin) do
    amount = self
    counter = 0
    while amount / (25) >= 1
      amount = amount - 25
      counter = counter + 1
    end
    counter
  end
end
