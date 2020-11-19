class CreateGrahamThrees < ActiveRecord::Migration[6.0]
  def change
    create_table :graham_threes do |t|
      t.string :description

      t.timestamps
    end
  end
end
