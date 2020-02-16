class RemoveHostLanguagueToFlats < ActiveRecord::Migration[6.0]
  def change
    remove_column :flats, :host_language
  end
end
