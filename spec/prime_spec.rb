require('rspec')
require('prime')

describe('Fixnum#prime') do
  it("will show the primes from 2..user input") do
    expect((11).prime()).to(eq([2, 3, 5, 7, 11]))
end

  end
