class AddGradeToPlayers < ActiveRecord::Migration[5.1]
  def change
    add_column :players, :grade, :string
  end
end
