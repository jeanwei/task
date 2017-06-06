And(/^I click edit on '([^']*)' with '([^']*)' of '([^']*)'$/) do |klass, property, value|
  object = klass.constantize.__send__("find_by_#{property}", value)
  find("#blog-#{object.id} a[href$='edit']").click
end

And(/^I click delete on '([^']*)' with '([^']*)' of '([^']*)'$/) do |klass, property, value|
  object = klass.constantize.__send__("find_by_#{property}", value)
  find("#blog-#{object.id} a[data-method='delete']").click
end

And(/^I click ok button in pop-up message$/) do
  page.driver.browser.switch_to.alert.accept
end
