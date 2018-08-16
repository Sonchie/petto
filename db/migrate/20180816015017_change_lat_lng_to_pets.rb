class ChangeLatLngToPets < ActiveRecord::Migration[5.2]
  def change
    rename_column :pets, :lat, :latitude
    rename_column :pets, :lng, :longitude
  end
end
