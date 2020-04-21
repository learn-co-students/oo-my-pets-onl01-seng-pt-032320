class Owner
  attr_reader :name, :species
  @@all = []
  @@count = 0
  
  def initialize(name)
    @name = name
    @species = "human"
    save
  end
  
  def save
    @@all << self
    @@count += 1
  end
  
  def say_species
    "I am a #{species}."
  end
  
  def self.all
    @@all
  end
  
  def self.count
    @@count
  end
  
  def self.reset_all
    @@count = 0 
  end
  
  def cats 
  end
end