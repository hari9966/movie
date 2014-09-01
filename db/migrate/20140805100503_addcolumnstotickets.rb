class Addcolumnstotickets < ActiveRecord::Migration
  def change
  add_column :tickets,:moviename,:string
  add_column :tickets,:theatername,:string
  add_column :tickets,:showtime,:string
  add_column :tickets,:seatno,:integer
  add_column :tickets,:price,:float
  end
end
