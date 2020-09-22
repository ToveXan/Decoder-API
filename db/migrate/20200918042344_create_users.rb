class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string :username
      t.string :password
      t.boolean :tutorial, default: false
      t.boolean :caseOne, default: false
      t.boolean :caseTwo, default: false
      t.boolean :caseThree, default: false

      t.timestamps
    end
  end
end
