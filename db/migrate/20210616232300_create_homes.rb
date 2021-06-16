class CreateHomes < ActiveRecord::Migration[6.1]
  def change
    create_table :homes do |t|
      t.string :address
      t.string :description
      t.string :price

      t.timestamps
    end
  end
end
