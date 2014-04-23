class AddCardToUsers < ActiveRecord::Migration
  def change
    add_column :users, :card, :string
  end
end
