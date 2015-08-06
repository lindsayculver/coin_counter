require('rspec')
require('coin')

describe('Fixnum#coin') do
  it('returns correct amount for 1 quarter') do
    expect((25).coin()).to(eq("1 quarter(s), 0 dime(s), 0 nickel(s), 0 penn(ies)"))
  end

  it('adds a quarter every time you reach a multiple of 25') do
    expect((50).coin()).to(eq("2 quarter(s), 0 dime(s), 0 nickel(s), 0 penn(ies)"))
  end

  it('adds a dime every time you reach a multiple of 10 after its already been looped through the quarter the correct number of times') do
  expect((70).coin()).to(eq("2 quarter(s), 2 dime(s), 0 nickel(s), 0 penn(ies)"))
end

  it('adds a nickel every time you reach a multiple of 5 after its already been looped through the quarters and dimes the correct number of times') do
  expect((15).coin()).to(eq("0 quarter(s), 1 dime(s), 1 nickel(s), 0 penn(ies)"))
end

  it('adds a penny for each remainder after the quarter, dime, and nickel loops') do
  expect((82).coin()).to(eq("3 quarter(s), 0 dime(s), 1 nickel(s), 2 penn(ies)"))
end

end
