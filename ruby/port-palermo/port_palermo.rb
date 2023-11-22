module Port
  IDENTIFIER = :PALE

  def self.get_identifier(city)
    city.slice(0,4).to_sym.upcase
  end

  def self.get_terminal(ship_identifier)
    ship = ship_identifier.slice(0,3).upcase

    if ship == "OIL" || ship == "GAS"
      :A
    else
      :B
    end
  end
end
