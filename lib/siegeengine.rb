class SiegeEngine < Unit
  def initialize
    @health_points = 200
    @attack_power = 50
  end

  def attack!(enemy)
    if enemy.is_a?(SiegeEngine) || enemy.is_a?(Building)
      super(enemy)
    else
      nil
    end
  end

end