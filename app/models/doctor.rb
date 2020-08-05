require 'pry'

class Doctor
    attr_reader :specialty
    attr_accessor :name, :year
    @@all = []
    
    def initialize(name, specialty, year = 1)
        @name = name
        @specialty = specialty
        @year = year 
        @@all << self
    end

    def self.all
        @@all
    end


    def self.greet
        puts "Welcome to your doctor's office."
    end

    def self.find_by_specialty(specialty)
        Doctor.all.filter do |doctor|
             doctor.specialty == specialty
        end
    end

end
