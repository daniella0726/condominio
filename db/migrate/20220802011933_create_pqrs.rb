class CreatePqrs < ActiveRecord::Migration[7.0]
  def change
    create_table :pqrs do |t|
      t.references :user, null: false, foreign_key: true
      t.string :tipo
      t.string :descripcion

      t.timestamps
    end
  end
end
