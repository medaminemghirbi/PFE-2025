class CreateFavoris < ActiveRecord::Migration[7.0]
  def change
    create_table :favoris, id: :uuid do |t|

      t.timestamps
    end
  end
end
