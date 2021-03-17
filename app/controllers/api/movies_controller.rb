class Api::MoviesController < ApplicationController
  def index
    response = HTTP.get("http://www.omdbapi.com/?i=tt3896198&apikey=#{Rails.application.credentials.movie_api[:api_key]}")
    render json: response.parse
  end
end
