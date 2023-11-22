module Port
  IDENTIFIER = :PALE

  def self.get_identifier(city)
    city[0, 4].upcase.to_sym
  end

  def self.get_terminal(ship_identifier)
    ship_id = ship_identifier[0,3].upcase

    ship_id == "OIL" || ship_id == "GAS" ? :A : :B
  end
end
