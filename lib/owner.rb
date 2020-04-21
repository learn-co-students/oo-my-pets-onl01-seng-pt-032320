class Owner
  attr_reader :name, :species
  
  @@all = []
  
  def initialize (name)
    @name = name
    @species = "human"
    @@all << self
  end 
  
  def say_species
    return "I am a human."
  end 
  
  def self.all
    @@all
  end 
  
  def self.count
    @@all.size
  end 
  
  def self.reset_all
    @@all = []
  end 
  
  def cats (number)
    @@all_cats [number]
  end 
  
  def dogs (number)
  end 
  
end