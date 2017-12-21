class DoctorsController < ApplicationController

  def index
    @doctors = Doctor.all
  end

  def show
    @doctor = Doctor.find(params[:id])
  end

  def create
    @doctor = Doctor.create(doctor_params)
  end


  private

  def doctor_params
    params.require(:doctor).permit(:name, :department)
  end
end
