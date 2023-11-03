class CreateAbsenceTypes < ActiveRecord::Migration[7.0]
  def change
    create_table :absence_types do |t|

      t.timestamps
    end
  end
end
