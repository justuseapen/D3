class PagesController < ApplicationController
  def home
  	@sesh = Sesh.new
  	@seshes = Sesh.all
  end
end
