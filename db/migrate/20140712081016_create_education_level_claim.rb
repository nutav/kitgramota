class CreateEducationLevelClaim < ActiveRecord::Migration
  def change
    create_table :education_level_claims do |t|
      t.string   :name, null: false
      t.string   :phone
      t.string   :email
      t.integer  :status, default: 1
      t.text     :comment

      t.timestamps

      t.references :education_level, index: true
    end
  end
end
