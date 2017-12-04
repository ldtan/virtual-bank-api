class CreateMedia < ActiveRecord::Migration[5.1]
  def change
    create_table :media do |t|
      t.boolean :is_active, default: true
      t.string :name #, null: false
      t.integer :account_id #, null: false
      t.integer :medium_type #, null: false
      t.money :total_amount, default: 0.00

      t.timestamps
    end
  end
end
