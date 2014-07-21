class Album < ActiveRecord::Base
  has_many :photos
  accepts_nested_attributes_for :photos

  scope :with_photos, -> {select('DISTINCT albums.*').joins(:photos)}
end