#puzzle controller
class StashController < ApplicationController
	before_action :authenticate_user!, except: [:index, :show]


	def index
		@puzzles = Stash.order("title")
		render "index.json.jbuilder", status: :ok
	end

	def create
	 	@puzzle = current_user.stashes.create(stash_params)
	#	@puzzle = Stash.create(stash_params)

		if @puzzle.save
			render json: { puzzle: @puzzle }, status: :ok
		else
			render json: { errors: @puzzle.errors.full_messages },
        	status: :unprocessable_entity
		end
	end

	def show
		@puzzle = Stash.find_by(id: params[:id])
		render "show.json.jbuilder", status: :found
	end 

	def user
		@puzzles = Stash.find(current_user.id)
		render "index.json.jbuilder", status: :found
	end

	private 
	def stash_params
		allow = [:image, :author, :title, :width, :height, :level]
		params.require(:stash).permit(allow)
	end
end