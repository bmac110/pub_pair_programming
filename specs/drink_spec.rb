require('minitest/autorun')
require('minitest/rg')
require_relative('../drink')

class DrinkTest < MiniTest::Test
  def setup()
    @drink = Drink.new("Purple Rain", 6, 2)
  end


  def test_get_drink_name()
    assert_equal("Purple Rain", @drink.name)
  end

  def test_get_drink_price()
    assert_equal(6, @drink.price)
  end

  def test_get_alcohol_level()
    assert_equal(2, @drink.alcohol_level)
  end

end
