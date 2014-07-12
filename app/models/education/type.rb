class Education::Type < ActiveRecord::Base
  self.table_prefix = 'education_'

  has_many :prices, foreign_key: :education_type_id
end