class CreateSchools < ActiveRecord::Migration
  def change
    create_table :schools do |t|
      t.integer :code
      t.string :name
      t.string :motto
      t.string :logo
      t.string :location
      t.string :phone
      t.string :address
      t.string :stype
      t.text :bio

      t.timestamps
    end
  end
end
