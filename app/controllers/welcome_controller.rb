class WelcomeController < ApplicationController
  
	def index

	 @time = Time.now	 
	end

	def goodbye
	 @time = Time.now
	end
end