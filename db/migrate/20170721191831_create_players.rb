class CreatePlayers < ActiveRecord::Migration[5.1]
  def change
    create_table :players do |t|
      t.string :name
      t.integer :grade
      t.integer :number
      t.string :position1
      t.string :position2
      t.string :position3
      t.boolean :coordinated
      t.integer :club_exp
      t.attachment :image
      t.references :team, foreign_key: true

      t.timestamps
    end
  end
end
