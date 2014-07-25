class Price < ActiveRecord::Base
  self.table_name = 'course_prices'

  belongs_to :level, class: Education::Level, foreign_key: :education_level_id
  belongs_to :type, class: Education::Type, foreign_key: :education_type_id

  scope :no_saturday, -> {where(saturday: false)}
  scope :no_individual, -> {where(individual: false)}

  scope :individuals, -> {where(individual: true)}

  scope :from_level, -> level_id {where(education_level_id: level_id)}
  scope :from_type, -> type_id {where(education_type_id: type_id)}

  def self.find_week_price(level, type)
  	self.from_level(level).from_type(type).no_saturday.no_individual.last	
  end
end