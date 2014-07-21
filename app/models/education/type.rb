class Education::Type < ActiveRecord::Base
  self.table_name = 'education_type'

  has_many :prices, foreign_key: :education_type_id
end