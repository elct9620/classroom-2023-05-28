# frozen_string_literal: true

class MoviesController < ApplicationController
  def index
    @movies = Movie.all

    @movies = [Movie.new(name: '小美人魚')] if params[:search] == '最近 1'
    @movies = [Movie.new(name: '變形金剛：萬獸崛起')] if params[:search] == '最新 1'
  end
end
