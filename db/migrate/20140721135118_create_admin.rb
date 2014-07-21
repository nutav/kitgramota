class CreateAdmin < ActiveRecord::Migration
  def change
    create_table :admins do |t|
    	t.string :login, null: false
    	t.string :password, null: false
    end
  end
end
