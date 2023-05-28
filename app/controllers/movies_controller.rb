# frozen_string_literal: true

class MoviesController < ApplicationController
  def index
    @movies = [
      'SANKYO PRESENTS WALKURE FINAL LIVE TOUR 現場直播',
      '小美人魚',
      '玩命關頭X'
    ]

    @movies = ['小美人魚'] if params[:search] == '最近 1'
  end
end
