class CreateTeacher < ActiveRecord::Migration
  def change
    create_table :teachers do |t|
    	t.string  :last_name, null: false
    	t.string  :first_name, null: false
    	t.string  :patronym
    	t.text    :extra
    	t.text    :education
    	t.text    :probation
    	t.text    :speciality
    	t.integer :years
    	t.text    :about

    	t.timestamps
    end
    add_attachment :teachers, :avatar
  end
end
