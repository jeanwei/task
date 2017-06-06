Feature: Managing Blog Content
  As a site owner
  So that I can manage my blog
  I'd like to login to create, update and delete posts

  Background:
    Given the owner has an email 'snoopy@example.com' with password 'iamsnoopy'
    Given following posts exist:
    | title         | body                   |
    | My First Post | This is my first post. |

  @javascript
  Scenario: create a post
    Given I login as 'snoopy@example.com' with 'iamsnoopy'
    And I open 'Blog' drop down link
    And I click 'Create A Post' link
    Then I fill in 'Title' with 'My Second Post'
    Then I fill in 'Body' with 'This is my second post'
    And I click 'Create Post' button
    And I should see 'My Second Post'

  @javascript
  Scenario: update a post
    Given I login as 'snoopy@example.com' with 'iamsnoopy'
    And I should see 'My First Post'
    And I click edit on 'Blog' with 'title' of 'My First Post'
    Then I fill in 'Title' with 'My Only Post'
    And I click 'Update Post' button
    And I should see 'My Only Post'
    And I should not see 'My First Post'

  @javascript
  Scenario: delete a post
    Given I login as 'snoopy@example.com' with 'iamsnoopy'
    And I should see 'My First Post'
    And I click delete on 'Blog' with 'title' of 'My First Post'
    And I click ok button in pop-up message
    And I should not see 'My First Post'
