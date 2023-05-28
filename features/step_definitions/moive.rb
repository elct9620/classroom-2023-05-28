# frozen_string_literal: true

Given('這裡有幾部電影') do |table|
  table.hashes.each do |movie|
    # ...
  end
end

When('開啟電影列表') do
  visit movies_path
end

Then('會看到 {string}') do |string|
  expect(page).to have_text(string)
end
