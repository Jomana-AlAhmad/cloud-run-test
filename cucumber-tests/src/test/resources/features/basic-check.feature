Feature: Call basic endpoints


  Scenario: Call hello world in functional
    Given setup app
    When the endpoint is called in functional
    Then the response is Hello World
    And the response code is 200


  Scenario: Call hello world in int
    Given setup app
    When the endpoint is called in integration
    Then the response is Hello World
    And the response code is 200