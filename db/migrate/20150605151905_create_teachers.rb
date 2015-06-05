class CreateTeachers < ActiveRecord::Migration
  def change
    create_table :teachers do |t|
      t.integer :id_no
      t.string :name
      t.date :dob
      t.string :gender
      t.string :sch_name
      t.integer :sch_code
      t.string :county
      t.string :phone
      t.string :address
      t.string :academic
      t.date :employed_on
      t.string :department
      t.string :employer
      t.integer :employee_num
      t.string :email
      t.string :parent
      t.text :bio

      t.timestamps
    end
  end
end
