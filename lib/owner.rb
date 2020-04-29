class Owner
  attr_reader :species, :name
  attr_accessor :pets
  @@all = []
  #@@pets = {:Dogs => [], :Cats => []}
  def initialize(name)
    @species = "human"
    @name = name
    @@all<<self
   @pets = {:dogs => [], :cats => []}
  end

  def say_species
"I am a #{species}."
  end

  def self.all
    @@all
  end

  def self.count
    @@all.length
  end

  def self.reset_all
    @@all.clear
  end

  def pets
    @pets = pets
  @dogs = dog
  @cats = cat
  end

  def cats
Cat.all.select {|cat| cat.owner == self }
  end
  def dogs
    Dog.all.select {|dog| dog.owner == self}
  end

  def buy_dog(dog)
    @pets[:dogs] << Dog.new(dog, self)
  end

  def walk_dogs
  self.dogs.each do |dog|
    dog.mood = "happy"
  end
end

  def feed_cats
self.cats.each do |cat|
  cat.mood = "happy"
  end
end

  def buy_cat(cat)
    @pets[:cats]<< Cat.new(cat, self)
  end

  def list_pets
   "I have #{@pets[:dogs].length} dog(s), and #{@pets[:cats].length} cat(s)."
 end
def sell_pets
dogs.each do |dog|
  dog.mood = "nervous"
  dog.owner = nil
end
cats.each do |cat|
  cat.mood = "nervous"
  cat.owner = nil
end
end
end
