class CreateMatchups < ActiveRecord::Migration[5.0]
  def change
    create_table :matchups do |t|
      

      t.timestamps
    end

    add_index :matchups, :team_one_id
    add_index :matchups, :team_two_id
    add_index :matchups, :winner_id
  end
end
