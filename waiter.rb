=begin
name string
age integer
experience string

=end

class Waiter
    attr_accessor :name, :experience
    @@all = []

    def initialize(name, experience)
        @name = name
        @experience = experience
        @@all << self
    end

    def self.all
        @@all
    end

    def order_meal(dish, price, customer)
        
    end
end