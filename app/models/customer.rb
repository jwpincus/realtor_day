class Customer < ApplicationRecord
  belongs_to :realtor
  delegate :agency, to: :realtor
end
