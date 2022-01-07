class CreateGyms < ActiveRecord::Migration[5.2]
  def change
    create_table :gyms do |t|
      t.string :name
      t.string :city
      t.string :address
      t.integer :phone_number
      t.string :url
      t.string :image
      t.time :opening_time
      t.time :closing_time
      t.text :introduction
      t.boolean :fitness, default: false
      t.boolean :swimming, default: false
      t.boolean :yoga, default: false
      t.boolean :personal, default: false
      t.boolean :shower, default: false
      t.boolean :sauna, default: false
      t.boolean :parking, default: false

      t.timestamps
    end
  end
end
