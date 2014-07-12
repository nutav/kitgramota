class CreatePhoto < ActiveRecord::Migration
  def change
    create_table :photos do |t|
      t.string  :name, null: false
      t.belongs_to :album
      t.timestamps
    end

    add_attachment :photos, :picture
  end
end
