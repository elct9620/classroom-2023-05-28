# frozen_string_literal: true

class MoviesController < ApplicationController
  def index
    type, amount = params[:search]&.split

    @movies = case type
              when '最近' then Movie.recent(amount.to_i)
              when '最新' then Movie.latest(amount.to_i)
              else
                Movie.all
              end
  end
end
