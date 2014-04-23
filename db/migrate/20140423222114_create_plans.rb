class CreatePlans < ActiveRecord::Migration
  def change
    create_table :plans do |t|
      t.integer :company_id
      t.decimal :amount
      t.string :interval
      t.string :name
      t.string :currency
      t.string :stripeid

      t.timestamps
    end
  end
end
