require 'spec_helper'
require 'pry'
describe SiegeEngine do 

  before :each do 
    @siege_engine = SiegeEngine.new
  end
 

   #it does 2* dmg to enemy buildings
   describe "Attack" do
    it "does 2* dmg to buildings" do
      enemy = Barracks.new
      (@siege_engine.attack!(enemy))
      expect(enemy.damage(@siege_engine)) == 100
    end
  end


  describe "Damage" do
    it "does 100 damage to barracks" do
      enemy = Barracks.new
      expect(enemy.damage(@siege_engine) == (enemy.health_points - enemy.damage(@siege_engine)))
    end
  end

  describe "Attack" do
    it "can attack other siege units" do
      enemy = SiegeEngine.new
      expect(@siege_engine.attack!(enemy)).to eq(150)
    end
  end

  describe "Attack" do
    it "cannot attack footmen" do
      enemy = Footman.new
      (@siege_engine.attack!(enemy)) == (nil)
    end
  end
end