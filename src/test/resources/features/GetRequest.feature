Feature: Get request

  Background:
    * def responseOfPost = call read("classpath://features//CreateRequest.feature")

  Scenario: Get request object
    Given url host
    When path 'objects/' + responseOfPost.response.id
    And method get
    Then status 200
    And print response