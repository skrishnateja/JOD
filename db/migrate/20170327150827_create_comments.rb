class CreateComments < ActiveRecord::Migration[5.0]
  def change
    create_table :comments do |t|
      t.text :name
      t.integer :user_id
      t.integer :issue_id

      t.timestamps
    end
  end
end
