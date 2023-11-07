class CreatePaniers < ActiveRecord::Migration[7.0]
  def change
    create_table :paniers, id: :uuid do |t|

      t.timestamps
    end
  end
end
