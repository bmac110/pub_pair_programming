class Pub

  attr_reader :name, :till, :drinks

  def initialize(name, till, drinks)
    @name = name
    @till = till
    @drinks = drinks
  end

  def increase_till(amount)
    @till += amount
  end

  def sell_drink(drink)

    sale = drink.price

    increase_till(sale)

  end


end
