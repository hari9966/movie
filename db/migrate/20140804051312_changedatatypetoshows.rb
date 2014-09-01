class Changedatatypetoshows < ActiveRecord::Migration
  def change
  change_column :shows,:showtime,:string
  end
end
