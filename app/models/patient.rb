require 'pry'

class Patient
    attr_reader :impatience
    attr_accessor :name, :age
    @@all = []
    def initialize(name, age)
        @name = name
        @age = age
        @impatience = 0
        @@all << self
    end

    def inquire_appt_ready 
        puts "doctor will be ready soon"
        increase_impatience
    end

    def self.all
        @@all
    end

    
    private

    def increase_impatience 
        @impatience += 1
    end

end

