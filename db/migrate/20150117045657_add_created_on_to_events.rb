class AddCreatedOnToEvents < ActiveRecord::Migration
  def change
    add_column :events, :created_on, :datetime
  end
end
