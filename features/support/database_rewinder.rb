# frozen_string_literal: true

BeforeAll do |_scenario|
  DatabaseRewinder.clean_all
end

After do |_scenario|
  DatabaseRewinder.clean
end

After do
  Movie.clear
end
