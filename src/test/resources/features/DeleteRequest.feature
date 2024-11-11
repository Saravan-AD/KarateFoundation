Feature: Create Object

  Background:
    * def responseOfPost = call read("classpath://features//CreateRequest.feature")

  Scenario: Create Object request
    Given url host
    When path 'objects/' + responseOfPost.response.id
    And header Content-Type = "application/json"
    And method delete
    Then status 200
    And print response