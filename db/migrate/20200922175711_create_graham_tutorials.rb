class CreateGrahamTutorials < ActiveRecord::Migration[6.0]
  def change
    create_table :graham_tutorials do |t|
      t.string :one
      t.string :two
      t.string :three
      t.string :four
      t.string :five

      t.timestamps
    end
  end
end
