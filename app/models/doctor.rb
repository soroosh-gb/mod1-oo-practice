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

    def add_patient(patient)
        patient.doctor = self
    end

    # def patients
    #     Patient.all.filter {|patient| patient.doctor == self }
    # end
    
    # def discharge_patient(patient_instance)
    #    if  self.patients.include? (patient_instance)
    #          patient_instance.doctor = nil
    #          "#{patient_instance.name} has been disrcharged."
    #     else 
    #         "Patianet does not exist!."
    #     end
    # end

    # def transfer_patient(patient_instance,doctor_instance)
    #     if self.patients.include? (patient_instance)
    #          patient_instance.doctor = doctor_instance
    #          "#{patient_instance.name} is successfully transfered.}"
    #     else
    #          "Patient does not exist."
    #     end 
    # end

    def doctor_appointments
        Appointments.all.filter {|app| app.doctor == self}
    end

    def patients 
        doctor_appointments.map do |app|
            app.patient
        end
    end
end

