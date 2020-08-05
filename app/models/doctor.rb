require "pry"

class Doctor
    attr_reader :specialty
    attr_accessor :name, :year

    def initialize(name, specialty, year = 1)
        @name = name
        @specialty = specialty
        @year = year 
    end

end

