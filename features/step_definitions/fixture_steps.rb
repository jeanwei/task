Given(/^the owner has an email '([^']*)' with password '([^']*)'$/) do |email, password|
  Owner.create(email:email, password: password, password_confirmation: password)
end

Given(/^following posts exist:$/) do |table|
  # table is a Cucumber::MultilineArgument::DataTable
  table.hashes.each do |hash|
    Blog.create(hash)
  end
end