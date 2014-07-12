class CreateEducationType < ActiveRecord::Migration
  def change
    create_table :education_types do |t|
      t.string  :name, null: false
      t.integer :hours

      t.timestamps
    end
  end
end
