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

Given(/^I visit "(.*?)" page$/) do |page|
  visit path_to(page)
end
