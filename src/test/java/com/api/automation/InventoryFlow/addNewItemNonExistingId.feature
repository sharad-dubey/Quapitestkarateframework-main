Feature: Create new item in the inventory

  Background: Setup the base path
    * url baseUrl
    * configure headers = { 'accept': 'application/json', 'Content-Type': 'application/json' }
    * def body = read("../NewIdEntry.json")
    * def uniqueId = '' + Math.floor(1000 + Math.random() * 9000)


  Scenario: To add new ID in inventory
    * set body.id = uniqueId
    Given path 'api/inventory/add'   
    And request body
    When method post
    And status 200
    And print response