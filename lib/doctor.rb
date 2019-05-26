class Doctor 
  attr_accessor :name, :appointments
  @@all = []
  
  def initialize(name)
    @name = name
    @@all << self
  end 
  
  def self.all 
    @@all
  end 
  
  def new_appointment(patient, date)
    new_ap = Appointment.new(patient, date, self)
    Appointment.all << new_ap 
    new_ap
  end 
  
  def appointments
    Appointment.all.select do |appt|
      appt.doctor == self
    end
  end
  
  def patients
    
  end 
  
end 