class ChangePatientToPatientIdOnAppointments < ActiveRecord::Migration
  def change
    rename_column :appointments, :patient, :patient_id
  end
end
