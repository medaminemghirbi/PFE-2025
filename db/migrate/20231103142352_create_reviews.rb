class CreateReviews < ActiveRecord::Migration[7.0]
  def change
    create_table :reviews, id: :uuid do |t|

      t.timestamps
    end
  end
end
