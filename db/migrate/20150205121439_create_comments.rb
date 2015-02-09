class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.string   :name
      t.integer  :status, default: 1
      t.text     :text, null: false
      t.integer  :raty

      t.timestamps
    end
  end
end
