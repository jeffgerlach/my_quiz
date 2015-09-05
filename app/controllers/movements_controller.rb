class MovementsController < ApplicationController
	def index
		@movements = Movement.all
		@movement = Movement.new
	end

	def create
		@movement = Movement.create(movement_params)
		if @movement.invalid?
			flash[:error] = 'You must enter a movement greater than 2 characters and a category!'
		end
		redirect_to root_path
	end

	private

	def movement_params
		params.require(:movement).permit(:movement_name, :movement_category)
	end

end
