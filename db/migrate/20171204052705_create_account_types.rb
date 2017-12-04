class CreateAccountTypes < ActiveRecord::Migration[5.1]
  def change
    create_table :account_types do |t|
      t.boolean :is_active, default: true
      t.string :name #, null: false
      t.jsonb :available_mediums #, null: false

      t.timestamps
    end
  end
end
