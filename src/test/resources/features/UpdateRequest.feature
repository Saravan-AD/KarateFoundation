Feature: Create Object

  Background:
    * def body = read("classpath://json//update-request.json")
    * def responseOfPost = call read("classpath://features//CreateRequest.feature")

  Scenario: Create Object request
    Given url host
    When path 'objects/' + responseOfPost.response.id
    And header Content-Type = "application/json"
    And request body
    And method put
    Then status 200
    And print response