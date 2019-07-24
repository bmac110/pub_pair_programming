require('minitest/autorun')
require('minitest/rg')
require_relative('../customer')
require_relative('../drink') #because customer needs to buy a drink
require_relative('../pub') #because customer needs to have access to a pub

class CustomerTest < MiniTest::Test
  def setup()
    @customer = Customer.new("John Wayne", 500, 60)
  end

  def test_get_customer_name()
    assert_equal("John Wayne", @customer.name)
  end

  def test_get_customer_wallet()
    assert_equal(500, @customer.wallet)
  end

  def test_customer_can_spend_money()
    #Act
    @customer.pay(10)
    #Assert
    assert_equal(490, @customer.wallet)
  end

  def test_customer_can_buy_a_drink()
    #Arrange
    drink = Drink.new("The Wobbly Whale", 10, 12)
    #Act
    @customer.buy_drink(drink)
    #Assert
    assert_equal(490, @customer.wallet)
  end

  def test_customer_can_buy_drink_from_pub()
    #Arrange
    #create new drinks the customer has access to
    @drink1 = Drink.new("Heaven on Earth", 8, 7)
    @drink2 = Drink.new("Highway to Hell", 9, 22)

    drinks = [@drink1, @drink2]
    #create a pub the customer has access to
    @pub = Pub.new("The Jolly Coder", 2000, drinks)
    #Act
    @customer.buy_drink_from_pub(@pub, @drink2)
    #Assert
    assert_equal(491, @customer.wallet)
    assert_equal(2009, @pub.till)

  end

  def test_get_age()
    assert_equal(60, @customer.age)
  end

  def test_customer_is_sober()
    assert_equal(0, @customer.drunkenness)
  end

end
