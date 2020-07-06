class Item < ApplicationRecord
  belongs_to :journey
  has_many :item_tags
  has_many :tags, through: :item_tags

  include PgSearch::Model
    pg_search_scope :search_by_tag,
    associated_against: {
      tags: [ :name ]
    },
    using: {
      tsearch: { prefix: true }
    }
end
