class Sesh < ActiveRecord::Base

	def length
	 ended_at - created_at
	end

end
