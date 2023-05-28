# frozen_string_literal: true

class Movie
  RECENT = :recent
  LATEST = :latest

  class << self
    def items
      @items ||= []
    end

    def create!(**attributes)
      items << new(
        name: attributes['name'],
        date: attributes['date']
      )
    end

    def recent(amount)
      items
        .select { |movie| Time.zone.now >= movie.date }
        .sort_by(&:date)
        .reverse
        .take(amount)
    end

    def latest(amount)
      items
        .sort_by(&:date)
        .reverse
        .take(amount)
    end

    def clear
      @items = []
    end

    alias all items
  end

  include ActiveModel::Model
  include ActiveModel::Attributes

  attribute :name
  attribute :date, :date
end
