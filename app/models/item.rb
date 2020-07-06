class Item < ApplicationRecord
  belongs_to :journey

   acts_as_taggable_on :tags

  include PgSearch::Model
    pg_search_scope :search_by_tag,
    associated_against: {
      tags: [ :name ]
    },
    using: {
      tsearch: { prefix: true }
    }
end
