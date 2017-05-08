class Property < ApplicationRecord
  belongs_to :realtor, optional: true
  has_many :showings
  delegate :agency, to: :realtor
end
