require 'pry'

class Cat
  attr_reader :name #reader because I dont want the class to change the name with setter
  attr_accessor :mood, :owner

  def initialize(name, mood = "nervous")
    @name = name
    @mood = mood
  end

end
