class SwapOutRationaleWithDescription < ActiveRecord::Migration[5.2]
  def change
    rename_column :posts, :rationale, :description
  end
end
