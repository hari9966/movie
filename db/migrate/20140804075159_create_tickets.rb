class CreateTickets < ActiveRecord::Migration
  def change
    create_table :tickets do |t|
    t.integer :tickets
    t.references :showtheater, index: true
    t.timestamps
    end
  end
end
