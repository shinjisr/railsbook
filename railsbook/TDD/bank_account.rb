class BankAccount
  def initialize(amount)
    @amount = amount
  end

  def balance
    @amount
  end

  def deposit(amount)
    @amount += amount if amount > 0
  end

  def withdraw(amount)
    # 提領金額大於零，且餘額大於提領金額
    if amount > 0 && @amount >= amount
      @amount -= amount
      amount
    else
      0
    end
  end

end
