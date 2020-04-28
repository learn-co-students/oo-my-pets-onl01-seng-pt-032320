class Owner
  attr_reader :name
  attr_accessor :cats, :dogs

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
    species
    pets = []
  end

  def species
    @species = "human"
  end

  def say_species
    return "I am a #{@species}."
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
    Cat.all.select {|cat_object| cat_object.owner == self}
  
  end

  def dogs
    Dog.all.select {|dog_object| dog_object.owner == self}
  end

  def buy_cat(name)
    # binding.pry
    Cat.new(name,self)
  end

  def buy_dog(name)
    # binding.pry
    Dog.new(name,self)
  end

  def feed_cats
    Cat.all.each {|cat| cat.mood = 'happy'}
  end

  def walk_dogs
    Dog.all.each {|dog| dog.mood = 'happy'}
  end

  def sell_pets
    Cat.all.each do |cat| 
       cat.mood = 'nervous'
       cat.owner = nil
    end
    Dog.all.each do |dog| 
      dog.mood = 'nervous'
      dog.owner = nil
    end

    def list_pets
      return "I have #{self.dogs.count} dog(s), and #{self.cats.count} cat(s)."
    end
  end

end
