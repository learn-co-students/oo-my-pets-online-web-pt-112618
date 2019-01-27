require 'dog'
require 'cat'
require 'fish'

class Owner
   attr_accessor :pets, :name, :fish, :dog, :cat
   
    @@all = []  
    def initialize(species, name=nil)
      @species = species
      @name = name
      @pets = {fishes: [], cats: [], dogs: []} 
      @@all << self
    end  
    
    def self.all 
      @@all
    end
    
    def self.count
      num = @@all.count
      num
    end
    
    def self.reset_all
      @@all.clear
      @@all
    end
    
    
    def species
      @species
    end
    
    def say_species
      spec = self.species
      "I am a #{spec}." 
    end
    
    def buy_fish(name)
      new_fish = Fish.new(name)
      pets[:fishes] << new_fish
    end
    
    def buy_cat(name)
      new_cat = Cat.new(name)
      pets[:cats] << new_cat
    end
    
     def buy_dog(name)
      new_dog = Dog.new(name)
      pets[:dogs] << new_dog
    end
    
    def walk_dogs
      pets[:dogs].collect do |dog|
        dog.mood = "happy"
      end
    end
    
      def play_with_cats
      pets[:cats].collect do |cat|
        cat.mood = "happy"
      end
    end
    
      def feed_fish
      pets[:fishes].collect do |fish|
        fish.mood = "happy"
      end
    end
    
    def sell_pets
      pets.each do |type, pets|
        pets.each do |pet|
        pet.mood = "nervous"
      end
    end
    pets.clear
    end
      
    def list_pets
      fish_num = pets[:fishes].count
      dog_num = pets[:dogs].count
      cat_num = pets[:cats].count
      "I have #{fish_num} fish, #{dog_num} dog(s), and #{cat_num} cat(s)."
    end
    
    
end