And(/^I click edit on '([^']*)' with '([^']*)' of '([^']*)'$/) do |klass, property, value|
  object = klass.constantize.__send__("find_by_#{property}", value)
  find("#blog-#{object.id} a[href$='edit']").click
end

And(/^I click delete on '([^']*)' with '([^']*)' of '([^']*)'$/) do |klass, property, value|
  object = klass.constantize.__send__("find_by_#{property}", value)
  page.evaluate_script('window.confirm = function(){return true;}') if ENV['CAPYBARA_CHROME_HEADLESS']
  find("#blog-#{object.id} a[data-method='delete']").click
end

And(/^I click ok button in pop-up message$/) do
  page.driver.browser.switch_to.alert.accept unless ENV['CAPYBARA_CHROME_HEADLESS']
end
