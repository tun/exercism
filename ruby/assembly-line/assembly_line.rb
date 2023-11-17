class AssemblyLine
  CARS_PER_HOUR = 221

  def initialize(speed)
    @speed = speed
  end

  def production_rate_per_hour
    if @speed.between?(0, 4)
      success_rate = 1.0
    elsif @speed.between?(5, 8)
      success_rate = 0.9
    elsif @speed == 9 
      success_rate = 0.8
    elsif @speed == 10
      success_rate = 0.77
    else 
      raise "The assembly line's speed can range from 0 (off) to 10 (maximum)."
    end

    @speed * success_rate * CARS_PER_HOUR
  end

  def working_items_per_minute
    (production_rate_per_hour / 60).floor
  end
end
