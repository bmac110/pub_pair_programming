class Customer

  attr_reader :name, :wallet, :age, :drunkenness

  def initialize(name, wallet, age)
    @name = name
    @wallet = wallet
    @age = age
    @drunkenness = 0
  end

  def pay(amount)
    @wallet -= amount
  end

  def buy_drink(drink)
    spending = drink.price

    pay(spending)
  end

  def buy_drink_from_pub(pub, drink)
    #customer needs to spend money
    buy_drink(drink)
    #pub increase with the amount customer has spent
    pub.sell_drink(drink)

  end

  def increase_drunk(number)
    @drunkenness += number
  end

  def get_drunk(drink)

    alcohol = drink.alcohol_level

    increase_drunk(alcohol)

  end



end
