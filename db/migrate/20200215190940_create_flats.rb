class CreateFlats < ActiveRecord::Migration[6.0]
  def change
    create_table :flats do |t|
      t.integer :number_of_guests
      t.string :flat_type
      t.integer :price_per_night
      t.integer :single_bed
      t.integer :double_bed
      t.integer :bedrooms
      t.integer :bathrooms
      t.boolean :kitchen, default: false
      t.boolean :wifi, default: false
      t.boolean :television, default: false
      t.boolean :baby_bed, default: false
      t.boolean :park, default: false
      t.string :host_language, default: "French"

      t.timestamps
    end
  end
end
