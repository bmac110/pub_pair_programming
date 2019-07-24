require('minitest/autorun')
require('minitest/rg')
require_relative('../food')

class FoodTest < MiniTest::Test

  def setup()
    @food = Food.new("Rocky Road", 1, 4)
  end

  def test_get_name()
    assert_equal("Rocky Road", @food.name)
  end

  def test_get_price()
    assert_equal(1, @food.price)
  end

  def test_get_rej_level()
    assert_equal(4, @food.rejuvenation_level)
  end

end
