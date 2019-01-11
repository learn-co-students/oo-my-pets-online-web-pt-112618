require 'pry'

class Owner
  @@all = []

  attr_accessor :pets, :name
  attr_reader :species

  def initialize(species)
    @species = species
    @@all << self
    @pets = {fishes: [], cats: [], dogs: []}
  end

  def self.all
    @@all
  end

  def self.count
    all.length
  end

  def self.reset_all
    @@all = []
  end

  def say_species
    "I am a #{self.species}."
  end

  def buy_fish(name)
    fish = Fish.new(name)
    @pets[:fishes] << fish
  end

  def buy_cat(name)
    cat = Cat.new(name)
    @pets[:cats] << cat
  end

  def buy_dog(name)
    dog = Dog.new(name)
    @pets[:dogs] << dog
  end

# When an owner plays with a cat or feeds a fish or walks a dog, that pet will get happier.
# Remember that the pets method stores all of an owners pets.
# The @pets hash stored in that method is full of instances of the Cat/Dog/Fish class.
# That means you can call Cat/Dog/Fish instance methods (such as .mood=) on those pets.

  def walk_dogs
    @pets[:dogs].each do |dog|
      dog.mood = "happy"
    end
  end

  def play_with_cats
    @pets[:cats].each do |cat|
      cat.mood = "happy"
    end
  end

  def feed_fish
    @pets[:fishes].each do |fish|
      fish.mood = "happy"
    end
  end

  def sell_pets
    @pets.values.each do |pet_array|
      pet_array.each do |pet|
        pet.mood = "nervous"
        #could there be a way to delete each pet instance while iterating through?
      end
    end
    @pets = {}
  end

  def list_pets
    "I have #{@pets[:fishes].count} fish, #{@pets[:dogs].count} dog(s), and #{@pets[:cats].count} cat(s)."
  end
end
