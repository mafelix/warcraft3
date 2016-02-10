class Building
  def initialize
  @health_points = 500
  end

  def attack(damage)
    if attacker.instance_of? Footman
      self.health_points -= (attacker.attack_power/2).ceil
    elsif attacker.instance_of? SiegeEngine
      self.health_points -= (attacker.attack_power * 2)
    else
      self.health_points -= attacker.attack_power
    end
  


  end
end