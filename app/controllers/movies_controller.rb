class MoviesController < ApplicationController
	def index
		@movies = Movie.all
	end

	def new
		@movie = Movie.new
	end

	def create
		@movie = Movie.create(movie_params)
		if @movie.valid?
			redirect_to root_path
		else
			render :new, status: :unprocessable_entity
		end
	end

	private
	def movie_params
		params.require(:movie).permit(:title, :description, :release_date)
	end

end
