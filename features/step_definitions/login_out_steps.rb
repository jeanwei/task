Given(/^I login as '([^']*)' with '([^']*)'$/) do |email, password|
  step %{I am at 'home' page}
  step %{I click 'Log In' link}
  step %{I fill in 'email' with '#{email}'}
  step %{I fill in 'password' with '#{password}'}
  step %{I click 'Log In' button}
end