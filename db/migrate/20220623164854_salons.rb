class Salons < ActiveRecord::Migration[6.1]
  def change
    create_table :salons do |t|
      t.string :name
      t.string :address
      t.integer :phone_number
    end 
  end
end
