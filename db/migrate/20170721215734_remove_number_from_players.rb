class RemoveNumberFromPlayers < ActiveRecord::Migration[5.1]
  def change
    remove_column :players, :number, :integer
    remove_column :players, :coordinated, :boolean
    remove_column :players, :club_exp, :integer
  end
end
