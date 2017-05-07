class Realtor < ApplicationRecord
  belongs_to :agency
  has_many :customers
  has_many :properties
end
