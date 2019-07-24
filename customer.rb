class Customer

  attr_reader :name, :wallet

  def initialize(name, wallet)
    @name = name
    @wallet = wallet
    @drinks = []
  end

  def drinks_count()
    return @drinks.count()
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



end
