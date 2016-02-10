class Unit
  attr_reader :health_points
  attr_accessor :attack_power
  
  def initialize(health_points, attack_power)
    @health_points = health_points
    @attack_power = attack_power
  end

  def attack!(enemy)
    return nil if self.dead?
    return nil if enemy.dead?
    enemy.damage(self.attack_power)
    
  end

  def damage(attack_power)
    @health_points -= attack_power
  end

  def dead?
    self.health_points <= 0
  end


end
