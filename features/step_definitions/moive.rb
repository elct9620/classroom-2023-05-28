# frozen_string_literal: true

Given('這裡有幾部電影') do |table|
  table.hashes.each do |movie|
    Movie.create!(**movie)
  end
end

When('開啟電影列表') do
  visit movies_path
end

When('在 {string} 填入 {string}') do |label, value|
  fill_in label, with: value
end

When('點選 {string}') do |text|
  click_on text
end

Then('會看到 {string}') do |string|
  expect(page).to have_text(string)
end
