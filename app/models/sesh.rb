class Sesh < ActiveRecord::Base
	belongs_to :user

	def length
		unless ended_at.nil?
			length = ended_at - created_at
			length = length / 60
			length = length.round
		else
			length = nil
	  end
	end
end
