class CreatePetitions < ActiveRecord::Migration[5.0]
  def change
    create_table :petitions do |t|
      t.string :name
      t.integer :identity
      t.date :date
      t.string :email
      t.string :direccion
      t.string :country
      t.string :city
      t.text :description

      t.timestamps
    end
  end
end
