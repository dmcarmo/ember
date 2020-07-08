class Journey < ApplicationRecord
  belongs_to :user
  has_many :items, dependent: :destroy


  include PgSearch::Model
  pg_search_scope :global_search,
    against: [ :title ],
    using: {
      tsearch: { prefix: true }
    }
end
