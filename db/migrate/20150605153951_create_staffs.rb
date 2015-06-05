class CreateStaffs < ActiveRecord::Migration
  def change
    create_table :staffs do |t|
      t.integer :id_num
      t.string :name
      t.string :sch_name
      t.integer :sch_code
      t.string :photo
      t.string :county
      t.string :phone
      t.string :address
      t.string :gender
      t.string :job
      t.integer :staff_id
      t.string :academic
      t.text :bio

      t.timestamps
    end
  end
end
