class CreateMediumTypes < ActiveRecord::Migration[5.1]
  def change
    create_table :medium_types do |t|
      t.boolean :is_active, default: true
      t.string :name #, null: false
      t.jsonb :details

      t.timestamps
    end
  end
end
