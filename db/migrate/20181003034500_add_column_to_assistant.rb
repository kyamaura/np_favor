class AddColumnToAssistant < ActiveRecord::Migration
  def change
    add_column :assistants, :deleted_at, :datetime
  end
end
