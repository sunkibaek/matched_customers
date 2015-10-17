require 'minitest/autorun'
require './lib/matched_customers'

class MatchedCustomersTest < MiniTest::Test
  def setup
    @matched_customers = MatchedCustomers.new('customers.json')
  end

  def test_output
    assert_output(output_string) { matched_customers.output }
  end

  private

  attr_reader :matched_customers

  def output_string
<<EOS
ID: 4	Name: Ian Kehoe
ID: 5	Name: Nora Dempsey
ID: 6	Name: Theresa Enright
ID: 8	Name: Eoin Ahearn
ID: 11	Name: Richard Finnegan
ID: 12	Name: Christina McArdle
ID: 13	Name: Olive Ahearn
ID: 15	Name: Michael Ahearn
ID: 17	Name: Patricia Cahill
ID: 23	Name: Eoin Gallagher
ID: 24	Name: Rose Enright
ID: 26	Name: Stephen McArdle
ID: 29	Name: Oliver Ahearn
ID: 30	Name: Nick Enright
ID: 31	Name: Alan Behan
ID: 39	Name: Lisa Ahearn
EOS
  end
end
