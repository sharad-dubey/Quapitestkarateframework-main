Feature: Get Item Details by ID

  Background: Setup the base path
    * url baseUrl

  Scenario: To filter by id in inventory
    Given path 'api/inventory/filter'
    And param id = '3'
    When method get
    Then status 200
    #Create variable to store the data from external json file
    * def actualResponse = read("../JsonResponseThirdItem.json")
    And print response
    And match response == actualResponse
    * karate.log('File content ===', actualResponse)
