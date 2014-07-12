class CreateAlbum < ActiveRecord::Migration
  def change
    create_table :albums do |t|
      t.string  :name, null: false
      t.text    :description

      t.timestamps
    end
  end
end
