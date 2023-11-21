module SavingsAccount
  def self.interest_rate(balance)
    if balance.negative?
      3.213
    elsif balance < 1_000
      0.500
    elsif balance < 5_000
      1.621
    else
      2.475
    end
  end

  def self.annual_balance_update(balance)
    balance * (1 + interest_rate(balance)/100.0)
  end

  def self.years_before_desired_balance(current_balance, desired_balance)
    years = 0

    while current_balance < desired_balance
      current_balance = annual_balance_update(current_balance)
      years += 1
    end

    years
  end
end
