class CreateReports < ActiveRecord::Migration[5.0]
  def change
    create_table :reports do |t|
      t.string :category, null: false
      t.text :description
      t.decimal :latitude, precision: 13, scale: 9, null: false
      t.decimal :longitude, precision: 13, scale: 9, null: false

      t.timestamps
    end
  end
end
