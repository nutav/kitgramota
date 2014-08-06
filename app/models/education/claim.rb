class Education::Claim < ActiveRecord::Base
  self.table_name = 'education_level_claims'

  belongs_to :level, class: 'Education::Level', foreign_key: :education_level_id
end