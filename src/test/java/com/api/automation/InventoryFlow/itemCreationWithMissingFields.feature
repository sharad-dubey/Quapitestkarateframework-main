Feature: Create new item with missing fields

  Background: Setup the base path
    * url baseUrl
    * configure headers = { 'accept': 'application/json', 'Content-Type': 'application/json' }
    * def body = read("../MissingInformationEntry.json")

  Scenario: To add item with missing information in inventory
    Given path 'api/inventory/add'    
    And request body
    When method post
    And status 400
    And print response
    And match response == 'Not all requirements are met'