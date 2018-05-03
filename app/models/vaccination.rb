class Vaccination < ApplicationRecord
  belongs_to :user
  has_many :vaccs
end
