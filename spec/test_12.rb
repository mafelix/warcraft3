require 'spec_helper'

describe Unit do
  before :each do
    @footman = Footman.new
  end


    #units should die if their health_points are zero
    it "If hp less than or equal to 0" do
      @footman.health_points = 0
      expect(@footman.dead?).to eq(true)
    end


    it "Dead? returns false if footman's health_points greater than 0" do
      @footman.health_points = 1   
      expect(@footman.dead?).to eq(false)
    end

end