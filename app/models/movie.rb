# frozen_string_literal: true

class Movie
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

    alias all items
  end

  include ActiveModel::Model
  include ActiveModel::Attributes

  attribute :name
  attribute :date, :date
end
