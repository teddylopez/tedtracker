class DropHandsTable < ActiveRecord::Migration[5.2]
  def up
    drop_table :Hands
  end

  def down
    raise ActiveRecord::IrreversibleMigration
  end
end
