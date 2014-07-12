class Price < ActiveRecord::Base
  self.table_name = 'course_prices'

  belongs_to :level, class: Education::Level, foreign_key: :education_level_id
  belongs_to :type, class: Education::Type, foreign_key: :education_type_id
end