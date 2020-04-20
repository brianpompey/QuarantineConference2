class ChangeConferencesTable < ActiveRecord::Migration[6.0]
  def change
    change_table :conferences do |t|
      t.remove :date_and_time
      t.date :date
      t.time :time
    end
  end
end
