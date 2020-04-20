class RemoveResumeFromUserInterests < ActiveRecord::Migration[6.0]
  def change
    remove_column :user_interests, :submit_resume, :boolean
  end
end
