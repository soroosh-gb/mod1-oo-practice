require 'pry'
require_relative './app/models/doctor.rb'
require_relative './app/models/patient.rb'

rob = Doctor.new("Rob" , "allergist", 2 )
ral = Doctor.new("Ral", "allergist", 3)
smith = Doctor.new("Smith", "Family Physician",5)
frank = Doctro.new("Frank", "dentist", 6)


sarah = Patient.new("Sarah", 45, ral)
eddy =  Patient.new("Eddy", 23, rob)
alex = Patient.new("Alex", 31, rob)
rose = Patient.new("Rose", 26, smith)



# binding.pry