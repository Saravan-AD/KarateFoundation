Feature: Get request

  Scenario Outline: Get request object
    Given url host
    When path 'objects' + "<endpoint>"
    And method get
    Then status 200
    And print response

    Examples:
    |endpoint|
    |/7              |
    |                |