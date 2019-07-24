require('minitest/autorun')
require('minitest/rg')
require_relative('../pub')
require_relative('../drink')
require_relative('../customer')

class PubTest < MiniTest::Test

  def setup()

    @drink1 = Drink.new("Purple Rain", 6)
    @drink2 = Drink.new("The Lonesome Road", 10)
    @drink3 = Drink.new("The Woozy Wayne", 6)
    @drink4 = Drink.new("The Wonky Wainbow", 8)
    @drink5 = Drink.new("The Wild Wild West", 6)

    drinks = [@drink1, @drink2, @drink3, @drink4, @drink5]

    @pub = Pub.new("The Jolly Coder", 2000, drinks)

  end

  def test_get_pub_name()
    assert_equal("The Jolly Coder", @pub.name)
  end

  def test_get_pub_till_amount()
    assert_equal(2000, @pub.till)
  end

  def test_get_pub_drinks()
    assert_equal(5, @pub.drinks.count)
  end

  def test_pub_till_amount_can_increase()
    #Act
    @pub.increase_till(10)
    #Assert
    assert_equal(2010, @pub.till)
  end

  def test_pub_can_sell_drink()

    #Act
    @pub.sell_drink(@drink1)

    #Assert
    assert_equal(2006, @pub.till)

  end

  def test_check_customer_age()
    #Arrange
    customer = Customer.new("Bruce Willis", 200, 55)
    @pub.check_age(customer)
    assert_equal(true, @pub.check_age(customer))
  end

  def test_pub_can_sell_to_customer__of_age()

    customer = Customer.new("Gandalf", 500, 120)
    @pub.allowed_to_sell(customer, @drink1)
    assert_equal(2006, @pub.till)

  end

end
