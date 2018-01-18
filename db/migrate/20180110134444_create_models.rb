class CreateModels < ActiveRecord::Migration
  def change
    create_table :models do |t|
      t.string :name, null: false
      t.string :phone, null: false
      t.string :email, null: false
      t.string :cargo_type, null: false
      t.string :container_type, null: false
      t.integer :cargo_weight, null: false
      t.text :cargo_details, null: false
      t.text :instruction
      t.string :importer, null: false
      t.string :importer_mail, null: false
      t.string :importer_phone, null:false
      t.string :origin, null: false
      t.timestamps null: false
    end
  end
end
