class Owner
  attr_reader :name, :species, :cats, :dogs

    @@all = []

  def initialize(name)
    @name = name
    @species = "human"
    @@all << self
    @cats = []
    @dogs = []
  end

  def say_species
    "I am a #{@species}."
  end

  def self.all
    @@all
  end

  def self.count
    @@all.size
  end

  def self.reset_all
    @@all.clear
  end

  def cats
    Cat.all.select { |x|  x.owner == self  }
  end

  def dogs
    Dog.all.select{|x| x.owner == self}
  end

  def buy_cat(name)
    name = Cat.new(name,self)
  end

  def buy_dog(name)
    name = Dog.new(name,self)
  end

  def walk_dogs
    self.dogs[0].mood = "happy"
  end

  def feed_cats
    self.cats[0].mood = "happy"
  end

  def sell_pets
    self.dogs[0].mood = "nervous"
    self.cats[0].mood = "nervous"
    self.dogs[0].owner = nil
    self.cats[0].owner = nil
    self.cats.clear
    self.dogs.clear
  end

  def list_pets
    "I have #{self.dogs.count} dog(s), and #{self.cats.count} cat(s)."
  end 

end
