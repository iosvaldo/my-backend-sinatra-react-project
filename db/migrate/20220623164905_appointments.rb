class Appointments < ActiveRecord::Migration[6.1]
  def change
    create_table :appointments do |t|
      t.string :username
      t.string :date
      t.integer :service_id
      t.integer :salon_id
    end 
  end
end
