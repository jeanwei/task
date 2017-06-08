## Example App

This example app:

* Has a carousel
* Embeds a youtube video 
* Uses a timeline
* Has a contact form
* Has a blog which requires login for content manipulation

### Running Locally

You'll need:

* Ruby 2.3.3
* Postgres
* Chromedriver
* Chrome

Then, once you clone down this repo:

* `bundle install`
* `rake db:create; rake db:migrate; rake db:seed;`
* `chromedriver`
* `bundle exec rspec`
* `bundle exec cucumber`


