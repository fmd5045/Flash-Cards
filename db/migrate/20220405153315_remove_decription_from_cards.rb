class RemoveDecriptionFromCards < ActiveRecord::Migration[7.0]
  def change
    remove_column :cards, :description
  end
end
