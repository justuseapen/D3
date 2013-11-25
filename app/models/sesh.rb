class Sesh < ActiveRecord::Base
	belongs_to :user

	def length
	 length = ended_at - created_at
	end

end
