class Owner
  # code goes here
  attr_reader :name, :species
  
  @@all = []
  
  def initialize(name)
    @name = name 
    @species =  "human"
    
    @@all << self
  end 
  
  def say_species
    "I am a human." 
  end
  
  def self.all
    @@all
  end
  
  def self.count
    @@all.length
  end
  
  def self.reset_all
    @@all = []
  end 
  
  def cats
    Cat.all.select { |cat| cat.owner == self}
  end 
  
  def dogs
    Dog.all.select { |dog| dog.owner == self }
  end 
  
  
  def buy_cat(cat_name)
    Cat.new(cat_name, self)
    Cat.all
  end
  
  def buy_dog(dog_name)
    Dog.new(dog_name, self)
    Dog.all
  end 
  
  def walk_dogs
    Dog.all.each do |dog|
      dog.mood = "happy"
      dog.mood
    end
  end 
  
  def feed_cats
    Cat.all.each do |cat|
      cat.mood = "happy"
      cat.mood
    end
  end
  
  def sell_pets
    Dog.all.each do |dog|
      dog.mood = "nervous"
      dog.owner = nil
      dog.mood
    end
    
    Cat.all.each do |cat|
      cat.mood = "nervous"
      cat.owner = nil
      cat.mood
    end

  end 
  
  def list_pets
    dog_num = Dog.all.select { |dog| dog.owner == self }.length
    cat_num = Cat.all.select { |cat| cat.owner == self}.length
    "I have #{dog_num} dog(s), and #{cat_num} cat(s)."
  end
  
end