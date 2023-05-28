# frozen_string_literal: true

class MoviesController < ApplicationController
  def index
    @movies = Movie.all

    @movies = Movie.recent if params[:search] == '最近 1'
    @movies = Movie.latest if params[:search] == '最新 1'
  end
end
