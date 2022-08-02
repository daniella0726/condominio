class CreateUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :users do |t|
      t.references :predio, null: false, foreign_key: true
      t.date :fecha_ini
      t.date :fecha_fin
      t.string :status
      t.string :name
      t.text :note

      t.timestamps
    end
  end
end
