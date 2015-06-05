class CreateParents < ActiveRecord::Migration
  def change
    create_table :parents do |t|
      t.integer :id_num
      t.string :name
      t.string :photo
      t.string :county
      t.string :phone
      t.string :address
      t.string :gender
      t.string :ptype
      t.text :bio

      t.timestamps
    end
  end
end
