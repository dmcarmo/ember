class CreateSettings < ActiveRecord::Migration[6.0]
  def change
    create_table :settings do |t|
      t.boolean :location_enable, default: false
      t.references :user, null: false, foreign_key: true
    end
  end
end
