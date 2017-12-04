class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.boolean :is_active, default: true
      t.string :first_name #, null: false
      t.string :middle_name #, null: false
      t.string :last_name #, null: false
      t.date :birthdate #, null: false
      t.string :address #, null: false
      t.string :phone_contact
      t.string :mobile_contact

      t.timestamps
    end
  end
end
