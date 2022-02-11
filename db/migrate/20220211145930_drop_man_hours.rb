class DropManHours < ActiveRecord::Migration[7.0]
  def up
    drop_table :man_hours
  end
end
