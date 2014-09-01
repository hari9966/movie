class Addcolumntoshowtheater < ActiveRecord::Migration
  def change
  change_table :showtheaters do |t|
    t.references :theater
    t.references :show
  end
  end
end
