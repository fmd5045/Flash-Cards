class AddDefinitionToCards < ActiveRecord::Migration[7.0]
  def change
    add_column :cards, :definition, :text
  end
end
