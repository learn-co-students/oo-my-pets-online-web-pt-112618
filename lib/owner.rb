require 'pry'
class Owner
  # code goes here
  
  attr_accessor :pets, :name
  
  @@all = []
  
  def initialize(name)
    @name = name
    @pets = {
      fishes: [],
      cats: [],
      dogs: []
    }
    @@all << self  #save instance to @@all array
  end 
  
  def self.all 
    @@all
  end 
  
  def self.count 
    self.all.count  #count the size of @@all array
  end 
  
  def self.reset_all 
    self.all.clear  #clear @@all array
  end 
  
  def species 
    "human"
  end 
  
  def say_species 
    "I am a human."
  end
  
  def buy_fish(name) 
    self.pets[:fishes] << Fish.new(name)
    self
  end 
  
  
  def buy_cat(name) 
    self.pets[:cats] << Cat.new(name)
    self
  end 
  
  
  def buy_dog(name) 
    self.pets[:dogs] << Dog.new(name)
    self
  end 
  
  def walk_dogs
    self.pets[:dogs].map {|dog_info| dog_info.mood = "happy"}
  end
  
  def play_with_cats
    self.pets[:cats].map {|cat_info| cat_info.mood = "happy"}
  end 
  
  def feed_fish
    self.pets[:fishes].map {|fish_info| fish_info.mood = "happy"}
  end
  
  def sell_pets
    self.pets.each do |type, pet|  #pet is Array of each pet
      pet.map do |pet_string|
        pet_string.mood = "nervous"
      end
       pet.clear
    end 
  end 
  
  def list_pets
    count = []
    self.pets.each do |type, pet|
      count << pet.count
    end 
    "I have #{count[0]} fish, #{count[2]} dog(s), and #{count[1]} cat(s)."
  end 
  
end