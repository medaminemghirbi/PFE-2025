class CreateWorkdays < ActiveRecord::Migration[7.0]
  def change
    create_table :workdays do |t|

      t.timestamps
    end
  end
end
