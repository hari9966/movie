class CreateShowtheaters < ActiveRecord::Migration
  def change
    create_table :showtheaters do |t|
     t.integer :show_id,:null => false
      t.integer :theater_id,:null => false

      t.timestamps
    end
  end
end
