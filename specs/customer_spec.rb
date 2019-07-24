require('minitest/autorun')
require('minitest/rg')
require_relative('../customer')

class CustomerTest < MiniTest::Test
  def setup()
    @customer = Customer.new("John Wayne", 500)
  end

  def test_get_customer_name()
    assert_equal("John Wayne", @customer.name)
  end

  def test_get_customer_wallet()
    assert_equal(500, @customer.wallet)
  end

  def test_customer_is_sober()
    assert_equal(0, @customer.drinks_count)
  end

end
