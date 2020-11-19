class CreateGrahamTutorials < ActiveRecord::Migration[6.0]
  def change
    create_table :graham_tutorials do |t|
      t.string :description

      t.timestamps
    end
  end
end
