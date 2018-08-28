class WelcomeController < ApplicationController
	def index
		@username = User.first.name
	end
end
