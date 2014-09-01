class CreateTheaters < ActiveRecord::Migration
  def change
    create_table :theatersnames do |t|
    t.string :theatername
    t.references :movie, index: true

      t.timestamps
    end
  end
end
