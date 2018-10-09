class DeleteNotification < ActiveRecord::Migration
  def change
    drop_table :notifications
  end
end
