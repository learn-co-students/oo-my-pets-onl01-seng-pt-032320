require "pry"
class Owner
 attr_accessor :cats, :dogs
 attr_reader :name, :species

 
 @@all = []
 @@counter = 0
 
 
  def initialize(name)
    @name = name
    @species = "human"
    @dogs = []
    @cats = []
    @@all << self
    @@counter += 1
  end
  
  def self.all
    @@all
  end
  
  def self.count 
    @@counter
  end

  def self.reset_all
    @@all.clear
    @@counter = 0
  end
  
  def say_species
    "I am a #{@species}."
  end
  
  def cats
   Cat.all.select {|cat| cat.owner == self}
  end
  
  def dogs
   Dog.all.select {|dog| dog.owner == self}
  end
  
  def buy_cat(name)
    cat_obj = Cat.new(name, self)
    @cats << cat_obj
  end
  
  def buy_dog(name)
    dog_obj = Dog.new(name, self)
    @dogs << dog_obj
  end
  #binding.pry
  def walk_dogs
      Dog.all.select do |dogs|
      dogs.mood = "happy"
      end
  end
  
  def feed_cats
    Cat.all.select do |cats|
      cats.mood = "happy"
    end
  end
  
  def sell_pets

    pets = cats + dogs
    pets.each do |pet|
      pet.mood = 'nervous'
      pet.owner = nil
    end

  end

  def list_pets
    "I have #{self.dogs.count} dog(s), and #{self.cats.count} cat(s)."
  end

  
  
  
  
  
  
  
  
  
  
  
  
  
  
end