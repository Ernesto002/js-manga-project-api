class Collection < ApplicationRecord
    has_many :manga
    scope :alphabetical, -> {order('title')}
end
