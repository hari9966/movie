class CreateGalleries < ActiveRecord::Migration
  def change
    create_table :galleries do |t|
         t.string :name
          t.references :movie, index: true
      t.timestamps
    end
  end
end
