# frozen_string_literal: true

class Movie
  include ActiveModel::Model
  include ActiveModel::Attributes

  attribute :name
end
