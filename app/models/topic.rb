class Topic < ActiveRecord::Base
	self.table_name = 'news'
	enum status: {draft: 1, publication: 2}

	scope :publications, -> {where(status: :publication)}
end