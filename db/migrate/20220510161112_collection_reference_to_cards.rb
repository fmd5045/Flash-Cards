class CollectionReferenceToCards < ActiveRecord::Migration[7.0]
  def change
    add_reference :cards, :card_collection, index: true
  end
end
