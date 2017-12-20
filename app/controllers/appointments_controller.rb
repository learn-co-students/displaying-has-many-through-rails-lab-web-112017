class AppointmentsController < ApplicationController
  def new
   @appointment = Appointment.new
  end

  def show
    @appointments = Appointment.all
   @appointment = Appointment.find(params[:id])
  end

  def create
    @appointment = Appointment.create(appointment_params)
    redirect_to @appointment
  end


  private
  def appointment_params
      params.require(:appointment).permit(:appointment_datetime, :doctor_id, :patient_id)
    end
end
