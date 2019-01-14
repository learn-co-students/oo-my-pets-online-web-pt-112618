require 'pry'

class Dog
  attr_accessor :mood
  attr_reader :name, :owner

  def initialize(name, mood = "nervous")
    @name = name
    @mood = mood
  end

end
