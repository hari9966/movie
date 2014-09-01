class RenameTableTheater < ActiveRecord::Migration
  def change
  rename_table :theatersnames, :theaters
  end
end
