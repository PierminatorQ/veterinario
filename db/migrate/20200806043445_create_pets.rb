class CreatePets < ActiveRecord::Migration[5.2]
  def change
    create_table :pets do |t|
      t.string :name
      t.date :birthday
      t.string :breed
      t.references :client, foreign_key: true

      t.timestamps
    end
  end
end
