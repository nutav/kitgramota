class Education::Type < ActiveRecord::Base
  self.table_name = 'education_types'

  has_many :prices, foreign_key: :education_type_id
end