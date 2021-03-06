class CreateApps < ActiveRecord::Migration
  def change
    create_table :apps do |t|
      t.string :name
      t.text :desc
      t.references :user, index: true

      t.timestamps
    end
  end
end
