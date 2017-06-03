Feature: Navigating the Site
  As a site owner
  So that my site is easy to navigate
  I like to have home page, about me page, video submission page, contact me page

  Background:

  Scenario: see a photo at home page
    Given I visit "home" page
    Then I should see a photo

  Scenario: see paragraphs at about me page
    Given I visit "about me" page
    Then I should see paragraphs

  Scenario: see a youtube video
    Given I visit "video submission" page
    Then I should see a youtube video

  Scenario: see a contact email and link to github
    Given I visit "contact me" page
    Then I should see an email
    And I should see a link to github
