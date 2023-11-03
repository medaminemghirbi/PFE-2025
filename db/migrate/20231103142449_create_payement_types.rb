class CreatePayementTypes < ActiveRecord::Migration[7.0]
  def change
    create_table :payement_types do |t|

      t.timestamps
    end
  end
end
