class Topic < ActiveRecord::Base
	self.table_name = 'news'
	enum status: {draft: 1, publication: 2}

	scope :publications, -> {where(status: 2)}

	def status_name
		case status
		  when 'draft'
		  	'черновик'
		  when 'publication' 
		  	'публикация'
		end
	end
end