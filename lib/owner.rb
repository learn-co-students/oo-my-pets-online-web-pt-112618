require 'pry'

class Owner
  attr_reader :species, :name
  attr_accessor :pets

  @@all = []
  @@count

  def initialize(species)
    @species = species
    @@all << self
    @@count = @@all.size
    @pets = {:fishes => [], :dogs => [], :cats => []}
  end

  def self.all
    @@all
  end

  def self.count
    @@count
  end

  def self.reset_all
    @@count = 0
  end

  def say_species
    "I am a #{@species}."
  end

  def name= (name)   #method name= means its a setter method so I had to add a getter method with attr_reader
    @name =  name
  end

  def buy_fish(name)
    #binding.pry
    @pets[:fishes] << Fish.new(name)
  end

  def buy_cat(name)
    @pets[:cats] << Cat.new(name)
  end

  def buy_dog(name)
    @pets[:dogs] << Dog.new(name)
  end

  def walk_dogs
    #binding.pry
    @pets[:dogs].each {|dog| dog.mood = "happy"}
    #dog is the instance in the array
  end

  def play_with_cats
    @pets[:cats].each {|cat| cat.mood = "happy"}
  end

  def feed_fish
    @pets[:fishes].each {|fish| fish.mood = "happy"}
  end

  def sell_pets
    #binding.pry
    @pets.each do |types, animals|
      animals.each do |x|
        x.mood = "nervous"
      end
        animals.clear # why????
    end
  end

  def list_pets
    "I have #{@pets[:fishes].size} fish, #{@pets[:dogs].size} dog(s), and #{@pets[:cats].size} cat(s)."
  end

end
