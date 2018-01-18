class CreateCategories < ActiveRecord::Migration
  def change
    create_table :categories do |t|
    	t.string :name, :limit=>50, :null=>false
    	t.string :short_name, :null=>false
    	t.text :description, :null=>false
      t.timestamps null: false
    end
  end
end
