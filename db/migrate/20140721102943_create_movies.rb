class CreateMovies < ActiveRecord::Migration
  def change
    create_table :movies do |t|
    t.string :name
      
      #mark avatar as attachments, and paperclip
      #will create the proper columns in the users table on migration
      t.attachment :avatar

      t.timestamps
    end
  end
end
