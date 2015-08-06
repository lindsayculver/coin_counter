require('rspec')
require('coin')

describe('Fixnum#coin') do
  it('adds a quarter every time you reach a multiple of 25') do
  expect((25).coin()).to(eq("quarter(s)"))
end
end
