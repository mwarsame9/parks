class CreateParks < ActiveRecord::Migration[5.1]
  def change
    create_table :parks do |t|
      t.string :name
      t.string :location
      t.string :description
      t.string :type

      t.timestamps
    end
  end
end
