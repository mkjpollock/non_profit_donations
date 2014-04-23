class EditTables < ActiveRecord::Migration
  def change
    drop_table :nonprofits
    create_table :companies do |t|
      t.string :name
      t.text :description

      t.timestamps
    end
  end
end
