class CreateAccomodations < ActiveRecord::Migration[7.1]
  def change
    create_table :accomodations do |t|
      t.string :title
      t.string :description
      t.float :price
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
