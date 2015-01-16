class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :ip_address
      t.string :webid
      t.string :action
      t.references :app, index: true

      t.timestamps
    end
  end
end
