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

  def buy_drink_from_pub(pub)
    #customer needs to spend money
    spending = pay(drink)
    #pub increase with the amount customer has spent
    pub.increase_till(spending)

  end



end
