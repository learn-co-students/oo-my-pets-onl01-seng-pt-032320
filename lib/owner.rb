class Owner
  attr_reader :name, :species
  @@all = []
  def initialize(name, species = "human")
    @name = name
    @species = species
    @@all << self
  end
  
  def say_species
    return "I am a #{self.species}."
  end
  
  def self.all
    @@all
  end
  
  def self.count
    @@all.count
  end
  
  def self.reset_all 
    self.all.clear
  end
  
  def cats 
    Cat.all.select {|name| name.owner == self}
  end
  
  def dogs
    Dog.all.select{|name| name.owner == self}
  end
  
  def buy_cat(name)
    Cat.new(name, self)
  end
  
  def buy_dog(name)
    Dog.new(name, self)
  end
  
  def walk_dogs
    self.dogs.each {|name| name.mood = "happy"}
  end
  
  def feed_cats
    self.cats.each {|name| name.mood = "happy"}
  end
  
  def sell_pets
    self.cats.each do |name| 
      name.owner = nil 
      name.mood = "nervous"
    end
    
    self.dogs.each do |name| 
      name.owner = nil 
      name.mood = "nervous"
    end
  end
  
  def list_pets
    "I have #{self.dogs.count} dog(s), and #{self.cats.count} cat(s)."
  end
end