class CreateAbsences < ActiveRecord::Migration[7.0]
  def change
    create_table :absences do |t|

      t.timestamps
    end
  end
end
