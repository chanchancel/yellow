class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
    	t.references :post
    	t.string :author, :null=>false, :limit=>25
    	t.string :email, :null=>false, :limit=>50
    	t.text :content, :null=>false
    	t.boolean :status, :default=>false
    	t.string :moderator
      t.timestamps null: false
    end
  end
end
