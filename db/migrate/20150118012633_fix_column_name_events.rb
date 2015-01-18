class FixColumnNameEvents < ActiveRecord::Migration
  def change
    rename_column :events, :action, :action_1
    rename_column :events, :webid, :name
  end
end
