class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
    	t.string :username, :null=>false, :limit=>25
    	t.string :password_digest, :null=>false, :length=>255
    	t.string :first_name, :null=>false, :length=>50
    	t.string :last_name, :null=>false, :length=>50
    	t.string :email, :null=>false, :length=>50
    	t.string :display_name, :null=>false, :limit=>25
    	t.integer :user_level, :default=>1
      t.timestamps null: false
    end
  end
end
