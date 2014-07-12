class Education::Level < ActiveRecord::Base
  self.table_prefix = 'education_'

  has_many :prices, foreign_key: :education_level_id
end