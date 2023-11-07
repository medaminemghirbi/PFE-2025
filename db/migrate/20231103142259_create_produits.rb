class CreateProduits < ActiveRecord::Migration[7.0]
  def change
    create_table :produits, id: :uuid do |t|

      t.timestamps
    end
  end
end
