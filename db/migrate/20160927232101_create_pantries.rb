class CreatePantries < ActiveRecord::Migration[5.0]
  def change
    create_table :pantries do |t|
      t.references :user, index: true
      t.references :items, index: true

      t.timestamps
    end
  end
end
