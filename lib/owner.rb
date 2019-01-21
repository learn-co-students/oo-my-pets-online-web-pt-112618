class Owner
  attr_reader :species
  attr_accessor :name, :pets

  OWNERS = []

  def self.all
    OWNERS
  end

  def self.count
    OWNERS.count
  end

  def self.reset_all
    OWNERS.clear
  end

  def initialize(species)
    @species = species
    OWNERS << self
    @pets = {:fishes => [], :dogs => [], :cats => []}
  end

  def say_species
    "I am a #{@species}."
  end

  def buy_fish(name)
    pets[:fishes] << Fish.new(name)
  end

  def buy_cat(name)
    pets[:cats] << Cat.new(name)
  end

  def buy_dog(name)
    pets[:dogs] << Dog.new(name)
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
    pets.each do |species, animals|
      animals.each do |animal|
        animal.mood = "nervous"
      end
      animals.clear
    end
  end

  def list_pets
    fish = pets[:fishes].count
    dogs = pets[:dogs].count
    cats = pets[:cats].count
    "I have #{fish} fish, #{dogs} dog(s), and #{cats} cat(s)."
  end

end
