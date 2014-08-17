class RemoveEncrPassword < ActiveRecord::Migration
  def change
  	remove_column :admins, :encrypted_password
  end
end
