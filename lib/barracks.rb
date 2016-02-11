class Barracks < Building

attr_accessor :gold, :food, :lumber
  def initialize
    @gold = 1000
    @food = 80
    @lumber = 500
    super
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

  def train_siege_engine
    return nil if !can_train_siege?
    self.gold -= 200
    self.food -= 3
    self.lumber -= 60
    SiegeEngine.new
  end

  def can_train_siege?
    self.gold >= 200 && self.food >= 3 && self.lumber >= 60
  end

  def can_train_peasant?
    self.gold >= 90 && food >= 5
  end

  def dead?
    self.health_points <= 0
  end



end
