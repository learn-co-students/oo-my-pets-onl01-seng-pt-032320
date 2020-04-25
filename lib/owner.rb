require 'pry'

class Owner

  @@all = []
  
  def initialize(name, species="human")
    @name = name
    @species = species
    @@all << self
  end
  
  def name
    @name
  end
  
  def species
    @species
  end
  
  def say_species 
    return "I am a #{species}."
  end

  def self.all
    @@all
  end
  
  def self.count
    @@all.count
  end
  
  def self.reset_all 
      @@all = []
  end
  
  def cats
      Cat.all.select do |cat|
        cat.owner == self
      end
  end
  
   def dogs
      Dog.all.select do |dog|
        dog.owner == self
        end
    end
    
  def buy_cat(name)
      Cat.new(name, self)
  end
    
  def buy_dog(name)
      Dog.new(name, self)
  end

   
   def walk_dogs
     Dog.all.map do |dog|
       if dog.owner = self
         dog.mood = "happy"
       end
     end
   end
   
   def feed_cats
     Cat.all.each do |cat|
       if cat.owner = self
         cat.mood = "happy"
       end
     end
   end
     
  def sell_pets
      Cat.all.each do |cat|
       if cat.owner = self
         cat.mood = "nervous"
         cat.owner = nil
       end
     end
     
     Dog.all.each do |dog|
       if dog.owner = self
         dog.mood = "nervous"
         dog.owner = nil
       end
     end
   end
   
   def list_pets
     k = self.cats.count
     d = self.dogs.count
     return "I have #{d} dog(s), and #{k} cat(s)."
   end
     
    
          
end
