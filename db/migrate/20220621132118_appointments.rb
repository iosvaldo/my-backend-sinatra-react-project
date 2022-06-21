class Appointments < ActiveRecord::Migration[6.1]
  def change
    create_table :appointments do |t|
      t.string :username
      t.datetime :date
      t.string :appointment_type
      t.integer :salon_id
      t.integer :user_id
    end 
  end
end
