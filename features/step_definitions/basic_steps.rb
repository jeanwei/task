def path_to(page_name)
  name = page_name.downcase
  case name
    when 'home' then
      root_path
    when 'about me' then
      about_me_path
    when 'video submission' then
      video_submission_path
    when 'contact me' then
      contact_me_path
    else
      raise('path to specified is not listed in #path_to')
  end
end

Given(/^I visit '(.*?)' page$/) do |page|
  visit path_to(page)
end

Given(/^I am at '(.*?)' page$/) do |page|
  visit path_to(page)
end

Then(/^I should see photo$/) do
  expect(page).to have_css 'img'
end

Then(/^I should see paragraphs$/) do
  expect(page).to have_css 'p'
end

Then(/^I should see a youtube video$/) do
  expect(page).to have_css '[src^="https://www.youtube.com/embed/"]'
end

Then(/^I should see a github link$/) do
  expect(page).to have_css 'a[href^="https://github.com/"]'
end

Then(/^I should see a contact form$/) do
  expect(page).to have_css 'form'
end

Then(/^I should see '([^']*)'$/) do |value|
  expect(page).to have_content value
end

Then(/^I should not see '([^']*)'$/) do |value|
  expect(page).not_to have_content value
end

Then(/^I click '([^']*)' link$/) do |link|
  click_link link
end

Then(/^I open '([^']*)' drop down link/) do |link|
  click_link link
end

Then(/^I fill in '([^']*)' with '([^']*)'/) do |field, value|
  fill_in field, with: value
end

Then(/^I click '([^']*)' button$/) do |button|
  click_button button
end