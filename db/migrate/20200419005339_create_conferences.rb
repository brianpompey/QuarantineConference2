class CreateConferences < ActiveRecord::Migration[6.0]
  def change
    create_table :conferences do |t|
      t.string :name
      t.datetime :date_and_time
      t.integer :min_donation, default: 0
      t.string :keynote
      t.text :category
      
      t.timestamps
    end
  end
end
