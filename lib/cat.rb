class Cat
  
  @@all = []
  
  def initialize(name, owner, mood="nervous")
    @name = name
    @owner = owner
    @mood = mood
    @@all << self
  end
  
  def name
    @name
  end
  
  def mood
    @mood
  end
  
  def owner
    @owner
  end
  
  def mood=(mood)
    @mood = mood
  end
  
  def owner=(owner)
    @owner = owner
    owner = Owner.new(@owner)
  end
  
  def self.all
    @@all
  end
    
  
end
