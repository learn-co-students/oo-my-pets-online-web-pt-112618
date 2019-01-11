class Owner
  
  @@all = []
  
  attr_reader :species
  attr_accessor :pets, :name
  
  def initialize(species)
    @pets = {fishes: [], cats: [], dogs: []}
    @@all << self
    @species = species
  end
  
  def say_species
    "I am a #{species}."
  end
  
  def self.all
    @@all 
  end
  
  def self.count
    self.all.count
  end
  
  def self.reset_all
    self.all.clear
  end
  
  def buy_fish(fish)
    pets[:fishes] << Fish.new(fish)
  end
  
  def buy_cat(cat)
    pets[:cats] << Cat.new(cat)
  end
  
  def buy_dog(dog)
    pets[:dogs] << Dog.new(dog)
  end
  
  def walk_dogs
    pets[:dogs].each do |dog|
      dog.mood = "happy"
    end
  end
  
  def play_with_cats
    pets[:cats].each do |cat|
      cat.mood = "happy"
    end
  end
  
  def feed_fish
    pets[:fishes].each do |fish|
      fish.mood = "happy"
    end
  end
  
  def sell_pets
    pets.each do |species, animal|
      animal.each do |animal|
        animal.mood = "nervous"
      end
      animal.clear
    end
  end
  
  def list_pets
    "I have #{pets[:fishes].count} fish, #{pets[:dogs].count} dog(s), and #{pets[:cats].count} cat(s)."
  end
end