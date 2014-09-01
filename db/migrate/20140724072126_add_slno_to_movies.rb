class AddSlnoToMovies < ActiveRecord::Migration
  def change
  add_column :movies,:slno,:integer
  end
end
