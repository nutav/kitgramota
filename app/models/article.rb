class Article < ActiveRecord::Base
	enum status: {draft: 1, publication: 2}

	scope :publications, -> {where(status: :publication)}
end