Feature: Task Management
  As a user
  I want to manage my tasks
  So that I can organize my work

  Scenario: View tasks list
    Given I am on the tasks page
    Then I should see "Tasks"

  Scenario: Create a new task
    Given I am on the tasks page
    When I click "New task"
    And I fill in "Title" with "Complete assignment"
    And I fill in "Description" with "Finish the Rails project"
    And I fill in "Due date" with "2025-12-01"
    And I click "Create Task"
    Then I should see "Task was successfully created"
    And I should see "Complete assignment"

  Scenario: Delete a task
    Given there is a task "Test task to delete"
    When I am on the tasks page
    And I click "Destroy" for the "Test task to delete" task
    Then I should see "Task was successfully destroyed"