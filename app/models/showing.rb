class Showing < ApplicationRecord
  belongs_to :realtor
  belongs_to :property
  belongs_to :customer
end
