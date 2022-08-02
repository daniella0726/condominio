class AddCampoPqr < ActiveRecord::Migration[7.0]
  def change
    add_column :pqrs, :status, :string
  end
end
