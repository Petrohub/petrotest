class CreateRetailers < ActiveRecord::Migration
  def change
    create_table :retailers do |t|
      t.string :first_name
      t.string :last_name
      t.string :business_name
      t.string :address1
      t.string :address2
      t.string :tax_id, index: true
      t.string :phone_number
      t.string :cell_phone_number
      t.string :no_of_gas_stations
      t.string :years_in_business
      t.string :account_number, index: true

      t.timestamps null: false
    end
  end
end
