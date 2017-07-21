class RemoveGradeFromPlayers < ActiveRecord::Migration[5.1]
  def change
    remove_column :players, :grade, :integer
  end
end
