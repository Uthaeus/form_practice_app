class Vaccination < ApplicationRecord
  belongs_to :user
  has_many :vaccs
  has_many :write_ins

  accepts_nested_attributes_for :vaccs, 
                                allow_destroy: true,
                                reject_if: lambda { |attrs| attrs['title'].blank? }

  accepts_nested_attributes_for :write_ins,
                                allow_destroy: true,
                                reject_if: lambda { |attrs| attrs['title'].blank? }

  validates_presence_of :received
end

