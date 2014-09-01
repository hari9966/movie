class ChagedatatypeseatnoToTickets < ActiveRecord::Migration
  def change
  change_column :tickets,:seatno,:string
  end
end
