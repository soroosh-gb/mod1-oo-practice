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

    # def change_doctor(doctor_instance)
    #     self.doctor = doctor_instance
    # end    

    def appointments
        Appointments.all.filter {|app| app.patient == self}
    end

    def doctors
        appointments.map do |app|
            app.doctor
        end
    end

    def create_appointment(doctor,date) 
        # Patient can have multiplae appointments with the same doctor but not the same day.
        found_app = false
        appointments.each do |app|
            if app.doctor == doctor and app.date == date
                found_app = true
            end
        end
        if !found_app 
            Appointments.new(self,doctor, date)
            "Your appointment is successfully booked"
        else
            "You already have this appointment."
        end
    end


    private

    def increase_impatience 
        @impatience += 1
    end

end

