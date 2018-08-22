class CreateAppointments < ActiveRecord::Migration[5.2]
  def change
    create_table :appointments do |t|
		t.column :title, :string, :null => false
		t.column :description, :string
		t.column :date, :date, :null => false
		t.timestamps
    end
  end
  
  def self.down
	drop_table :books
  end
   
end
