class ChangeType < ActiveRecord::Migration[5.1]
  def change
    remove_column :parks, :type, :string
    add_column :parks, :park_type, :string
  end
end
