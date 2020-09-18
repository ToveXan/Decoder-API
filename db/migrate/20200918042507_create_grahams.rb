class CreateGrahams < ActiveRecord::Migration[6.0]
  def change
    create_table :grahams do |t|
      t.text :greeting
      t.text :tutorial
      t.text :life_count
      t.integer :user_id

      t.timestamps
    end
  end
end
