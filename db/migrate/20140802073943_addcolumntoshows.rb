class Addcolumntoshows < ActiveRecord::Migration
  def change
  add_column :shows,:showtime,:time
  end
end
