class CreateCommentUpdates < ActiveRecord::Migration[5.2]
  def change
    create_table :comment_updates do |t|
      t.integer :comment_id
      t.datetime :update_date
      t.time :update_time
      t.string :update_type
      t.string :current_update
      t.string :employee_name
      t.timestamps
    end
  end
end
