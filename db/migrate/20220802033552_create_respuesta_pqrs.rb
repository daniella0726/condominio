class CreateRespuestaPqrs < ActiveRecord::Migration[7.0]
  def change
    create_table :respuesta_pqrs do |t|
      t.references :pqr, null: false, foreign_key: true
      t.references :admin, null: false, foreign_key: true
      t.string :descripcion

      t.timestamps
    end
  end
end
