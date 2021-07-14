=begin
name string
age integer

=end

class Customer
    attr_accessor :name, :age
    @@all = []

    def initialize(name, age)
        @name = name
        @age = age
        @@all << self
    end

    def self.all
        @@all
    end

    def order_meal(dish, price, waiter)
        meal = Meal.new(dish, price, waiter, self)

    end
end