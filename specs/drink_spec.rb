require('minitest/autorun')
require('minitest/rg')
require_relative('../drink')

class DrinkTest < MiniTest::Test
  def setup()
    @drink = Drink.new("Purple Rain", 6)
  end


  def test_get_drink_name()
    assert_equal("Purple Rain", @drink.name)
  end

end
