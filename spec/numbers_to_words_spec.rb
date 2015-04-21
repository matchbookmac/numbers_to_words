require('rspec')
require('numbers_to_words')

describe('Fixnum#numbers_to_words') do
  it("Given a Fixnum between 0 and 9, the method will return the written equivalent") do
    expect(1.numbers_to_words()).to(eq('one'))
  end
  it("Given a Fixnum between 10 and 19, the method will return the written equivalent") do
    expect(13.numbers_to_words()).to(eq('thirteen'))
  end
  it("Given a Fixnum between 20 and 99, the method will return the written equivalent") do
    expect(23.numbers_to_words()).to(eq('twenty three'))
  end
  it("Given a Fixnum between 0 and 999, the method will return the written equivalent") do
    expect(675.numbers_to_words()).to(eq('six hundred seventy five'))
  end
end
