class CreateCommandes < ActiveRecord::Migration[7.0]
  def change
    create_table :commandes do |t|

      t.timestamps
    end
  end
end
