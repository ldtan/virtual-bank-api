class CreateAccounts < ActiveRecord::Migration[5.1]
  def change
    create_table :accounts do |t|
      t.boolean :is_active, default: true
      t.string :username #, null: false
      t.string :password #, null: false
      t.integer :account_type #, null: false

      t.timestamps
    end
  end
end
