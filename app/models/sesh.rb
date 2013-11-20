class Sesh < ActiveRecord::Base

	def length
	 in_seconds = ended_at - created_at
	 in_minutes = in_seconds/60
	 rounded = in_minutes.round
	 if rounded == 1
	 	shows = "#{rounded} minute"
	 else
	 shows = "#{rounded} minutes"
	 end
	end

end
