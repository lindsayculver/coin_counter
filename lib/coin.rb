# counter = 1
# until counter.==(50)
#   puts "quarter"
#   counter = counter.+(25)
# end
#
class Fixnum
  define_method(:coin) do
    amount = self
    while amount / (25) >= 1
      amount = amount - 25
      return "1 quarter(s)"

    end
  end
end
