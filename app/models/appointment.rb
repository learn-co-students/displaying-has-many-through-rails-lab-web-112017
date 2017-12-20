class Appointment < ActiveRecord::Base
  belongs_to :patient
  belongs_to :doctor

  def convert_to_string
    self.appointment_datetime.strftime("%B %e, %Y at %H:%k")
  end


end
