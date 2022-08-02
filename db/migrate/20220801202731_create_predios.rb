class CreatePredios < ActiveRecord::Migration[7.0]
  def change
    create_table :predios do |t|
      t.string :tipo
      t.string :ubicacion
      t.integer :tipo_no
      t.integer :ubicacion_no

      t.timestamps
    end
  end
end
