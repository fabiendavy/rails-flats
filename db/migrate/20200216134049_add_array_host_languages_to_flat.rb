class AddArrayHostLanguagesToFlat < ActiveRecord::Migration[6.0]
  def change
    add_column :flats, :host_languages, :string, array: true, default: ["French"]
  end
end
