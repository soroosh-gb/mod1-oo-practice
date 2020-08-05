require 'pry'
require_relative './app/models/doctor.rb'
require_relative './app/models/patient.rb'

rob = Doctor.new("Rob" , "allergist", 2 )
ral = Doctor.new("Ral", "allergist", 3)
smith = Doctor.new("Smith", "Family Physician",5)


eddy =  Patient.new("Eddy", 23)
alex = Patient.new("Alex", 31)
rose = Patient.new("Rose", 26)

binding.pry