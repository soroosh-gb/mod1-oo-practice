require 'pry'
require_relative './app/models/doctor.rb'
require_relative './app/models/patient.rb'
require_relative './app/models/appointments.rb'

rob = Doctor.new("Rob" , "allergist", 2 )
ral = Doctor.new("Ral", "allergist", 3)
smith = Doctor.new("Smith", "Family Physician",5)
frank = Doctor.new("Frank", "dentist", 6)


sarah = Patient.new("Sarah", 45)
eddy =  Patient.new("Eddy", 23)
alex = Patient.new("Alex", 31)
rose = Patient.new("Rose", 26)

app_one = Appointments.new(alex,smith,"august 5th")
app_two = Appointments.new(rose,ral,"august 8th")
app_three = Appointments.new(sarah,rob,"august 4th")
app_four = Appointments.new(eddy,ral,"august 5th")

# binding.pry