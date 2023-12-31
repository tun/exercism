class LocomotiveEngineer
  def self.generate_list_of_wagons(*wagons)
    wagons
  end

  def self.fix_list_of_wagons(each_wagons_id, missing_wagons)
    first, second, third, *remainder = each_wagons_id

    [third, *missing_wagons, *remainder, first, second]
  end

  def self.add_missing_stops(route, **stops)
    route[:stops] = stops.values

    route
  end

  def self.extend_route_information(route, more_route_information)
    {**route, **more_route_information}
  end
end
