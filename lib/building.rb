class Building 
  attr_accessor :health_points
  
  def initialize
    @health_points = 500
  end

  def damage(attacker)
    if attacker.instance_of? Footman
      @health_points -= (attacker.attack_power / 2).ceil
    elsif attacker.instance_of? SiegeEngine
      @health_points -= (attacker.attack_power * 2)
    else
      @health_points -= attacker.attack_power
    end
  



  end
end