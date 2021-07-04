class Manga < ApplicationRecord
    belongs_to :collection
    scope :alphabetical, -> {order('title')}
end
