class AddEncvrColumn < ActiveRecord::Migration
  def change
  	add_column :admins, :encrypted_password, :string, null: false
  end
end
