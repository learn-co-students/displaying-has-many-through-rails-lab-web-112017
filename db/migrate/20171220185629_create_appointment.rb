class CreateAppointment < ActiveRecord::Migration
  def change
    create_table :appointments do |t|
      t.date :appointment_datetime
      t.belongs_to :doctor, index: true, foreign_key: true
      t.belongs_to :patient, index: true, foreign_key: true
    end
  end
end
