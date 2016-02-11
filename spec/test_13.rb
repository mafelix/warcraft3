require 'spec_helper'


describe Unit do
  before :each do
  @footman = Footman.new
  @enemy = Footman.new
  @enemy.health_points = 0
  end


  #Unit can't attack when dead
  it "cannot attack when footman is dead" do
    expect(@enemy.attack!(@footman)).to eq(nil)
  end
  #Unit cannot attack dead units
  it "cannot attack a dead unit" do
    expect(@footman.attack!(@enemy)).to eq(nil)
  end
end

