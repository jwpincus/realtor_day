class Agency < ApplicationRecord
  has_many :realtors
  has_many :properties, through: :realtors
  has_many :customers, through: :realtors
end
