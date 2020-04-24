require "pry"
class Owner
 attr_accessor 
 attr_reader :name, :species

 
 @@all = []
 @@counter = 0
 
  def initialize(name)
    @name = name
    @species = "human"
    @@all << self
    @@counter += 1
  end
  
  def self.all
    @@all
  end
  
  def self.count 
    @@counter
  end
 # binding.pry
  def self.reset_all
    @@all.clear
    @@counter = 0
  end
  
  def say_species
    "I am a #{@species}."
  end
end