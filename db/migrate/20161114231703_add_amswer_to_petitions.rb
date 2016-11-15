class AddAmswerToPetitions < ActiveRecord::Migration[5.0]
  def change
    add_column :petitions, :amswer, :text
    add_column :petitions, :state, :booleam
  end
end
