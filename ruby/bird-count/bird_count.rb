class BirdCount
  def self.last_week
    [0, 2, 5, 3, 7, 8, 4]
  end

  def initialize(birds_per_day)
    @birds_data = birds_per_day
  end

  def yesterday
    @birds_data[-2]
  end

  def total
    @birds_data.sum
  end

  def busy_days
    @birds_data.count { |birds| birds >= 5 }
  end

  def day_without_birds?
    @birds_data.any? { |birds| birds == 0 }
  end
end
