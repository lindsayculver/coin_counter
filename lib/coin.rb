# counter = 1
# until counter.==(50)
#   puts "quarter"
#   counter = counter.+(25)
# end
#
class Fixnum
  define_method(:coin) do
    if self.%(25) == 0
      "quarter(s)"
    end
  end
end
