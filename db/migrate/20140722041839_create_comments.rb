class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.string :commenter_name
      t.text :description
      t.integer :rating
      t.references :movie, index: true
      t.timestamps
    end
  end
end
