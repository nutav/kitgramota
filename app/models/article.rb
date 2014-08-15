class Article < ActiveRecord::Base
	enum status: {draft: 1, publication: 2}

	scope :publications, -> {where(status: 1)}

	def status_name
		case status
		  when 'draft'
		  	'черновик'
		  when 'publication' 
		  	'публикация'
		end
	end
end