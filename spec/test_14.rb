require 'spec_helper'

describe Barracks do 
  before :each do
    @barracks = Barracks.new
  end

#Barracks start with 500 lumber

  it"starts with 500 lumber" do
    expect(@barracks.lumber).to eq(500)
  end














end

