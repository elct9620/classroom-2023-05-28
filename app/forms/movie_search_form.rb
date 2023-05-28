# frozen_string_literal: true

class MovieSearchForm
  TYPES = {
    '最近' => Movie::RECENT,
    '最新' => Movie::LATEST
  }.freeze

  def initialize(search)
    @search = search
    @type, @amount = @search&.split
  end

  def type
    TYPES[@type]
  end

  def amount
    @amount.to_i
  end
end
