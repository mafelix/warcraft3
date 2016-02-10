class Barracks

attr_accessor :gold, :food, :lumber
  def initialize
    @gold = 1000
    @food = 80
    @lumber = 500
  end

  def train_footman
    return nil if !can_train_footman? 
    self.gold -= 135 
    self.food -= 2
    Footman.new
  end

  def can_train_footman?
    self.gold >= 135 && food >= 2
  end

  def train_peasant
    return nil if !can_train_peasant?
    self.gold -= 90
    self.food -= 5
    Peasant.new
  end

  def can_train_peasant?
    self.gold >= 90 && food >= 5
  end

end
