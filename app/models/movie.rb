# frozen_string_literal: true

require 'net/http'

class Movie
  RECENT = :recent
  LATEST = :latest

  class << self
    def items
      Nokogiri::HTML(raw)
              .css('.movieList li')
              .map do |el|
        new(
          name: el.css('h2').text,
          date: el.css('time').text
        )
      end
    end

    def raw
      return Net::HTTP.get(URI(source)) if source.start_with?('http')

      Rails.root.join(source).read
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

    alias all items
  end

  include ActiveModel::Model
  include ActiveModel::Attributes

  class_attribute :source, default: 'https://www.vscinemas.com.tw/vsweb/film/index.aspx'

  attribute :name
  attribute :date, :date
end
