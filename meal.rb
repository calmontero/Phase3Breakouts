=begin
dish string
price integer
term string
waiter Waiter
customer Customer

=end

class Meal
    attr_accessor :dish, :price, :waiter, :customer
    @@all = []

    def initialize(dish, price, waiter, customer)
        @dish = dish
        @price = price
        @waiter = waiter
        @customer = customer
        @@all << self
    end

    def self.all
        @@all
    end


end


