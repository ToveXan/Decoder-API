class CreateGrahamTwos < ActiveRecord::Migration[6.0]
  def change
    create_table :graham_twos do |t|
      t.string :description

      t.timestamps
    end
  end
end
