class Item < ApplicationRecord
  belongs_to :journey

  acts_as_taggable_on :tags

  geocoded_by :location
  after_validation :geocode, if: :will_save_change_to_location?

  include PgSearch::Model
    pg_search_scope :search_by_tag,
    associated_against: {
      tags: [ :name ]
    },
    using: {
      tsearch: { prefix: true }
    }
end
