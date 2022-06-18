class CreateCarForRents < ActiveRecord::Migration[7.0]
  def change
    create_table :car_for_rents do |t|
      t.string :make
      t.string :model
      t.string :Available_From
      t.string :Available_Until
      t.string :image
      t.string :Kilometers_Traveled
      t.float :Longitude
      t.float :Latitude

      t.timestamps
    end
  end
end
