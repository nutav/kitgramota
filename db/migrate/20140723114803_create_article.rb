class CreateArticle < ActiveRecord::Migration
  def change
    create_table :articles do |t|
    	t.string  :name, null: false
    	t.text    :text
    	t.integer :status, default: 1

    	t.timestamps
    end
  end
end
