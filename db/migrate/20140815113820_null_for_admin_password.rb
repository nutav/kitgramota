class NullForAdminPassword < ActiveRecord::Migration
  def change
  	change_column :admins, :password, :string, null: true 
  end
end
