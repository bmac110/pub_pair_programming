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



end
