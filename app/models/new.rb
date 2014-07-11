class New < ActiveRecord::Base
	enum status: {draft: 1, publication: 2}
end