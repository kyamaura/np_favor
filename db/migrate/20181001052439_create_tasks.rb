class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.string :title
      t.string :compensation
      t.date :reception_deadline
      t.text :content
      t.timestamp :deleted_at
      t.integer :user_id
      t.integer :status

      t.timestamps null: false
    end
  end
end
