class Owner
  @@all = []

  attr_accessor :cats, :dogs
  attr_reader :species, :name
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
    @@all.length
  end

  def self.reset_all
    @@all.clear
  end

  def buy_cat(cat_name)
    Cat.all.each do |cat|
      if cat.name == cat_name
        cat.owner = self
        if @cats.include?(cat)
          @cats.sort_by {|current_cat| cat == current_cat ? 1 : 0}
          return
        end
        @cats << cat
        return
      end
    end
    Cat.new(cat_name, self)
  end

  def buy_dog(dog_name)
    Dog.all.each do |dog|
      if dog.name == dog_name
        dog.owner = self
        if @dogs.include?(dog)
          @dogs.sort_by{|current_dog| dog == current_dog ? 1 : 0}
          return
        end
        @dogs << dog
        return
      end
    end
    Dog.new(dog_name, self)
  end

  def walk_dogs
    @dogs.each {|dog| dog.mood = "happy"}
  end

  def feed_cats
    @cats.each {|cat| cat.mood = "happy"}
  end

  def sell_pets
    @cats.each do |cat|
      cat.mood = "nervous"
      cat.owner = nil
    end
    @dogs.each do |dog|
      dog.mood = "nervous"
      dog.owner = nil
    end
    @cats = []
    @dogs = []
  end

  def list_pets
    "I have #{@dogs.length} dog(s), and #{@cats.length} cat(s)."
  end
end
