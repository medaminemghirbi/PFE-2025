class CreateDelegations < ActiveRecord::Migration[7.0]
  def change
    create_table :delegations, id: :uuid do |t|
      t.string :name
      t.references :municipalitie, type: :uuid, foreign_key: true
      t.timestamps
    end
  end
end