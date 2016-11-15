class AddStateToPetitions < ActiveRecord::Migration[5.0]
  def change
    add_column :petitions, :state, :boolean
  end
end
