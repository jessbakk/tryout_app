class AddNumberFromPlayers < ActiveRecord::Migration[5.1]
  def change
    add_column :players, :number, :string
    add_column :players, :coordinated, :string
    add_column :players, :club_exp, :string
  end
end
