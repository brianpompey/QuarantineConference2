class CreateUserInterests < ActiveRecord::Migration[6.0]
  def change
    create_table :user_interests do |t|
      t.string :company
      t.string :school
      t.integer :work_experience
      t.boolean :looking_for_work
      t.text :code_skills
      t.boolean :submit_resume

      t.timestamps
    end
  end
end
