require "pry"
require_relative "./owner.rb"

=begin
attributes
name-string
age-int
gender-string
fixed-boolean
breed-string
=end

class Dog
    attr_accessor :name,:age,:gender,:fixed,:breed,:owner

    @@all = []

    def initialize(name)
        @name=name
        @@all << self
    end

    def self.all
        @@all
    end
end

snoopy = Dog.new("Snoopy")
charlie = Owner.new("Charlie")
snoopy.owner = charlie

binding.pry