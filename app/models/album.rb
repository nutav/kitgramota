class Album < ActiveRecord::Base
  has_many :photos, dependent: :destroy
  accepts_nested_attributes_for :photos, allow_destroy: true

  scope :with_photos, -> {select('DISTINCT albums.*').joins(:photos)}
end