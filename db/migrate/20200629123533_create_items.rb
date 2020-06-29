class CreateItems < ActiveRecord::Migration[6.0]
  def change
    create_table :items do |t|
      t.text :comment
      t.string :item_type, null: false
      t.text :content
      t.float :lat
      t.float :long
      t.references :journey, null: false, foreign_key: true

      t.timestamps
    end
  end
end
