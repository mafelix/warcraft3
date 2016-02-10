require_relative 'spec_helper'
require '/vagrant/rubywork/w2work/warcraft3/lib/footman.rb'
# Units that can fight, such as the Footman, have both health points to indicate their health and attack power to indicate how much damage they deal to other units
# As such, they must start off with a certain amount of each

describe Footman do
#"The vast ranks of the Alliance armies have diminished over the years due to the incessant infighting amongst the former Alliance nations. However, many of the strong-hearted citizens of Azeroth have volunteered to defend their lands as Footmen. Though these fierce warriors lack the shining plate mail and specialized training of their noble predecessors, they still fight with bravery and honor on the field of battle."


  before :each do
    @footman = Footman.new
  end

  it "has and knows its HP (health points)" do
    expect(@footman.health_points).to eq(60)
  end

  it "has and knows its AP (attack power)" do
    expect(@footman.attack_power).to eq(10)
  end

end
