require 'pry'
class Patient 
  @@all = []
  attr_accessor :name, :appointments
  
  def initialize(name)
    @name = name 
    @@all << self
  end 
  
  def self.all
    @@all
  end 
  
  def new_appointment(doctor, date)
    new_app = Appointment.new(self, doctor, date)
    Appointment.all << new_app 
    new_app
    binding.pry
  end
  
  def appointments
    Appointment.all.select do |appt|
      appt.patient == self
    end
  end 
  
  def doctors 
    appointments.map {|appt| appt.doctor}
    binding.pry
  end 
  
end 
