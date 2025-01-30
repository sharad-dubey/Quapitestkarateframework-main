Feature: Create new item with existing ID

  Background: Setup the base path
    * url baseUrl
    * configure headers = { 'accept': 'application/json', 'Content-Type': 'application/json' }
    * def body = read("../ExistingIdEntry.json")

  Scenario: To add existing ID in inventory
    Given path 'inventory/add'    
    And request body
    When method post
    And status 400
    And print response
