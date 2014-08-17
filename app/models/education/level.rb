class Education::Level < ActiveRecord::Base
  self.table_name = 'education_levels'

  has_many :prices, foreign_key: :education_level_id
  has_many :claims, class_name: 'Education::Claim', foreign_key: :education_level_id
end