class AddCityAndAdressColumnsToFlat < ActiveRecord::Migration[6.0]
  def change
    add_column :flats, :address, :string
    add_column :flats, :city, :string
  end
end
