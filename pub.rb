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

  def check_age(customer)
    return customer.age >= 18
  end

  def allowed_to_sell(customer, drink)
    if check_age(customer) == true
      sell_drink(drink)
    end

    return "Thou shallt not drink!"

  end
  
  def drunk_check(customer)
    return customer.drunkenness
  end


end
