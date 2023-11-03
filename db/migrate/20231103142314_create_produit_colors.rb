class CreateProduitColors < ActiveRecord::Migration[7.0]
  def change
    create_table :produit_colors do |t|

      t.timestamps
    end
  end
end
