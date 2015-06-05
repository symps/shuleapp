class CreateStudents < ActiveRecord::Migration
  def change
    create_table :students do |t|
      t.integer :adm
      t.string :name
      t.date :dob
      t.string :gender
      t.string :sch_name
      t.integer :sch_code
      t.string :county
      t.integer :form
      t.string :stream
      t.string :dorm
      t.date :admitted_on
      t.string :previous_sch
      t.string :kcpe
      t.string :email
      t.string :parent
      t.text :bio

      t.timestamps
    end
  end
end
