class AddColumnToAppointments < ActiveRecord::Migration[6.1]
  def change
    add_column :appointments, :likes, :integer
  end
end
