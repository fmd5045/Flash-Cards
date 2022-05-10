class Card < ApplicationRecord
    validates :term, :definition, presence: true
    validates :term, uniqueness: true
end
