class CreateStations < ActiveRecord::Migration
  def change
    create_table :stations do |t|
      t.string :brand, index: true
      t.string :business_name
      t.string :contact_person
      t.string :phone_number
      t.string :cell_number
      t.string :email
      t.string :address1
      t.string :address2
      t.string :city
      t.string :state
      t.string :zip_code
      t.string :station_number
      t.string :facility_id, index: true
      t.string :tax_id, index: true
      t.string :extras

      t.references :retailer, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
