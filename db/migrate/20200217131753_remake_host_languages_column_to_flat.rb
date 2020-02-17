class RemakeHostLanguagesColumnToFlat < ActiveRecord::Migration[6.0]
  def change
    remove_column :flats, :host_languages
    add_column :flats, :host_languages, :string, array: true
  end
end
