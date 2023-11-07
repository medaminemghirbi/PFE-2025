class CreateColors < ActiveRecord::Migration[7.0]
  def change
    create_table :colors, id: :uuid do |t|
      t.string :color
      t.string :code
      t.timestamps
    end
  end
end
