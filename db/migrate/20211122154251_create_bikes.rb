class CreateBikes < ActiveRecord::Migration[6.0]
  def change
    create_table :bikes do |t|
      t.references :user, null: false, foreign_key: true
      t.string :name
      t.text :description
      t.string :address
      t.integer :price_per_day
      t.string :kind
      t.string :size

      t.timestamps
    end
  end
end
