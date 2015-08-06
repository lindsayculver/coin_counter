require('rspec')
require('coin')

describe('Fixnum#coin') do
  it('returns correct amount for 1 quarter') do
    expect((25).coin()).to(eq(1))
  end

  it('adds a quarter every time you reach a multiple of 25') do
    expect((50).coin()).to(eq(2))
  end
end

# describe('Fixnum#coin') do
#   it('adds a dime every time you reach a multiple of 10 after its already been looped through the quarter the correct number of times') do
#   expect((10).coin()).to(eq("dimes(s)"))
# end
#
# describe('Fixnum#coin') do
#   it('adds a nickel every time you reach a multiple of 5 after its already been looped through the quarters and dimes the correct number of times') do
#   expect((10).coin()).to(eq("nickel(s)"))
# end
#
# describe('Fixnum#coin') do
#   it('adds a penny for each remainder after the quarter, dime, and nickel loops') do
#   expect((10).coin()).to(eq("penn(ies)"))
# end
#
# end
