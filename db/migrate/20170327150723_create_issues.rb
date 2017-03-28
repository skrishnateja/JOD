class CreateIssues < ActiveRecord::Migration[5.0]
  def change
    create_table :issues do |t|
      t.string :name
      t.integer :user_id
      t.integer :private
      t.integer :submission_id

      t.timestamps
    end
  end
end
