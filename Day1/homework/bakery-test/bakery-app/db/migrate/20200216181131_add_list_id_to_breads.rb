class AddListIdToBreads < ActiveRecord::Migration[5.2]
  def change
    add_column :breads, :list_id, :integer, default: 1
  end
end
