class AddAction2ToEvents < ActiveRecord::Migration
  def change
    add_column :events, :action_2, :string
  end
end
