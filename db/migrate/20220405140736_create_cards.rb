class CreateCards < ActiveRecord::Migration[7.0]
  def change
    create_table :cards do |t|
      t.text :description
      t.string :term

      t.timestamps
    end
  end
end
