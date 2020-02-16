class CreateFlatImages < ActiveRecord::Migration[6.0]
  def change
    create_table :flat_images do |t|
      t.string :url
      t.references :flat, null: false, foreign_key: true

      t.timestamps
    end
  end
end
