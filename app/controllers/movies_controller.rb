# frozen_string_literal: true

class MoviesController < ApplicationController
  def index
    @movies = [
      Movie.new(name: 'SANKYO PRESENTS WALKURE FINAL LIVE TOUR 現場直播'),
      Movie.new(name: '小美人魚'),
      Movie.new(name: '玩命關頭X')
    ]

    @movies = [Movie.new(name: '小美人魚')] if params[:search] == '最近 1'
    @movies = [Movie.new(name: '變形金剛：萬獸崛起')] if params[:search] == '最新 1'
  end
end
