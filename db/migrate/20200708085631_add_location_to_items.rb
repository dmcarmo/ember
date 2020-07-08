class AddLocationToItems < ActiveRecord::Migration[6.0]
  def change
    add_column :items, :location, :string, default: "Lisbon"
  end
end
