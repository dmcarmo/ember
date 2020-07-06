class DelItemTypeAddType < ActiveRecord::Migration[6.0]
  def change
    remove_column :items, :item_type
    add_column :items, :type, :string
  end
end

