#attributes
#gender-string
#name-string
#age-int
#previous_dogs-boolean
#current-dogs-count-int

class Owner

    attr_accessor :gender,:name,:age,:previous_dogs,:current_dog_count

    @@all = []

    def initialize(name)
        @name=name

        @@all << self
    end

    def self.all
        @@all
    end

    def add_dog_by_name(name)
        dog = Dog.new(name)
        dog.owner = self
    end

    def dogs
        Dog.all.select {|dog| dog.owner==self}
    end






end