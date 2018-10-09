class CreateNotifications < ActiveRecord::Migration
  def change
    create_table :notifications do |t|
      t.string :requeter_name
      t.string :requeter_email
      t.string :assistant_name
      t.string :assistant_email

      t.timestamps null: false
    end
  end
end
