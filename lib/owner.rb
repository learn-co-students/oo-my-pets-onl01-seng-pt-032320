class Owner
  attr_reader :name, :species
  attr_accessor :pets
  
  @@all = []
  
  def initialize (name)
    @name = name
    @species = "human"
    @@all << self
    @pets = {:cats => [], :dogs => []}
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
  
  def cats 
    Cat.all.select {|cat| cat.owner == self}
  end 
  
  def dogs 
    Dog.all.select {|dog| dog.owner == self}
  end 
  
  def buy_cat (name)
    @pets[:cats] << Cat.new(name, self)
  end 
  
  def buy_dog (name)
    @pets[:dogs] << Dog.new(name, self)
  end 
  
  def walk_dogs
    @pets[:dogs].each do |dog|
      dog.mood = "happy"
    end 
  end 
  
  def feed_cats
  end 
  
  def sell_pets
  end 
  
  def list_pets
    return "I have #{@pets[:dogs].size} dog(s), and #{@pets[:cats].size} cat(s)."
  end 
  
end