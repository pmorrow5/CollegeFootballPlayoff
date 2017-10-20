class CreateBrackets < ActiveRecord::Migration[5.0]
  def change
    create_table :brackets do |t|
      
      t.timestamps
    end

    add_index :brackets, :conference_id
  end
end
