class CreatePayements < ActiveRecord::Migration[7.0]
  def change
    create_table :payements do |t|

      t.timestamps
    end
  end
end
