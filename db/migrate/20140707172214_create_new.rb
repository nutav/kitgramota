class CreateNew < ActiveRecord::Migration
  def change
    create_table :news do |t|
    	t.string  :name, null: false
    	t.text    :description
    	t.integer :status, default: 1

    	t.timestamps
    end
  end
end
