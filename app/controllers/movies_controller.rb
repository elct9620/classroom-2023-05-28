# frozen_string_literal: true

class MoviesController < ApplicationController
  def index
    input = MovieSearchForm.new(params[:search])

    @movies = case input.type
              when Movie::RECENT then Movie.recent(input.amount)
              when Movie::LATEST then Movie.latest(input.amount)
              else
                Movie.all
              end
  end
end
