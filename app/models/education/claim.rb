class Education::Claim < ActiveRecord::Base
  self.table_name = 'education_level_claims'

  enum status: {never_saw: 1, accepted: 2}

  belongs_to :level, class_name: 'Education::Level', foreign_key: :education_level_id
end