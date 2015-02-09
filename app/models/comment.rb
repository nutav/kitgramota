class Comment < ActiveRecord::Base

  enum status: {never_saw: 1, accepted: 2}

  def author
    name.blank? ? 'Аноним' : name
  end
  
  scope :accepts, -> {where(status: 2)}

end