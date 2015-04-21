require('rspec')
require('numbers_to_words')

describe('Fixnum#numbers_to_words') do
  it("Given a Fixnum between 0 and 9, the method will return the written equivalent") do
    expect(1.numbers_to_words()).to(eq('one'))
  end
end
