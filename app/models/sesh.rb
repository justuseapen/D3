class Sesh < ActiveRecord::Base

	@@all = []

	def initialize
		@name = name
		@created_at = created_at
		@ended_at=ended_at
	end
	
	def name
		@name
	end

	def created_at
		@created_at
	end

	def ended_at
		@ended_at
	end

	def self.create(name, created_at, ended_at)
		sesh = Sesh.new(name, created_at, ended_at)
		@@all << sesh
		sesh
	end	

	def self.all
		@@all
	end

end
