require 'pry'

class Patient
    attr_reader :impatience
    attr_accessor :name, :age, :doctor
    @@all = []
    def initialize(name, age, doctor)
        @name = name
        @age = age
        @doctor = doctor
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

    def change_doctor(doctor_instance)
        self.doctor = doctor_instance
    end    
        
    
    private

    def increase_impatience 
        @impatience += 1
    end

end

