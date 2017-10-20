class CreateConferences < ActiveRecord::Migration[5.0]
  def change
    create_table :conferences do |t|
      t.string :name, null: false

      t.timestamps
    end
  end
end
