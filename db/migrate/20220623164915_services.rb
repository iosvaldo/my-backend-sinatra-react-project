class Services < ActiveRecord::Migration[6.1]
  def change
    create_table :services do |t|
      t.string :service
    end 
  end
end
