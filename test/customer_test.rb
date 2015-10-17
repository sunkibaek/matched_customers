require 'minitest/autorun'
require 'json'
require './lib/customer'

class CustomerTest < MiniTest::Test
  def setup
    @customer = Customer.new(JSON.parse('{"latitude": "52.986375",
      "user_id": 12, "name": "Christina McArdle", "longitude": "-6.043701"}'))
  end

  def test_user_id
    assert_equal 12, customer.user_id
  end

  def test_name
    assert_equal 'Christina McArdle', customer.name
  end

  def test_close_to_doublin_office?
    assert customer.close_to_doublin_office?
  end

  private

  attr_reader :customer
end
