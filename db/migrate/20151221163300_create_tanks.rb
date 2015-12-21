class CreateTanks < ActiveRecord::Migration
  def change
    create_table :tanks do |t|
      t.string :eighty_seven
      t.string :eighty_eight
      t.string :eighty_nine
      t.string :ninety
      t.string :ninety_one
      t.string :ninety_three
      t.string :diesel
      t.string :bio_diesel
      t.string :kerosene
      t.string :tank_registration_number, index: true
      t.references :station, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
