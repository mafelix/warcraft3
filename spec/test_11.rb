require 'spec_helper'


describe Building do
  before :each do
    @barracks = Barracks.new
    @footman = Footman.new
  end

    #barracks have 500hp 
    it "has 500 hp" do
      expect(@barracks.health_points).to eq(500)
    end

    #damage to buildings
    it "takes 1/2 damage from footman" do
      @barracks.damage(@footman)
      expect(@barracks.health_points).to eq(495)
    end
  

end