class CreateCoursePrice < ActiveRecord::Migration
  def change
    create_table :course_prices do |t|
      t.integer :sum, null: false
      t.boolean :saturday, default: false
      t.boolean :individual, default: false
      t.belongs_to :education_level
      t.belongs_to :education_type

      t.timestamps
    end
  end
end
