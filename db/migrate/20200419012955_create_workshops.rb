class CreateWorkshops < ActiveRecord::Migration[6.0]
  def change
    create_table :workshops do |t|
      t.string :name
      t.text :description

      t.timestamps
    end
  end
end
