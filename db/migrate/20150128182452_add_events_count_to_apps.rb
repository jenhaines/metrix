class AddEventsCountToApps < ActiveRecord::Migration
  def change
    add_column :apps, :events_count, :integer, null: false, default: 0
  end
end
