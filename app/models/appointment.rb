class Appointment < ActiveRecord::Base
  belongs_to :doctor
  belongs_to :patient



  def formatted_date
    month = self.appointment_datetime.strftime("%B")
    day = self.appointment_datetime.day
    year = self.appointment_datetime.year
    hour = (self.appointment_datetime.strftime("%H"))
    min = self.appointment_datetime.strftime("%M")
    "#{month} #{day}, #{year} at #{hour}:#{min}"
  end
end
