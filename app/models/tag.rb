class Tag < ApplicationRecord
  has_many :item_tags

  include PgSearch::Model
  pg_search_scope :global_search,
    against: [ :name ],
    using: {
      tsearch: { prefix: true }
    }
end
