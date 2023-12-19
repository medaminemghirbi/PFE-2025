class CreateAddresses < ActiveRecord::Migration[7.0]
  def change
    create_table :addresses, id: :uuid do |t|
      t.references :delegation, type: :uuid, foreign_key: true
      t.integer :code_postal
      t.string :street
      t.timestamps
    end
  end
end