Feature: Create Object

  Background:
    * def body = read("classpath://json//create-request.json")

  Scenario: Create Object request
    Given url host
    When path 'objects/'
    And header Content-Type = "application/json"
    And request body
    And method post
    Then status 200
    And print response