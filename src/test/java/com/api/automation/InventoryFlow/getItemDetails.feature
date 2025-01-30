Feature: To test Inventory API

  Background: Setup the base path
   * url baseUrl
   * def responseLength = 9
   * def InventorySchema = 
   """
   { id: '#string', name: '#string', price: '#string', image: '#string' }
   """


  Scenario: To fetch all item in inventory
    Given path 'api/inventory'
    When method get
    Then status 200
    And print response
    And match response.data[0].name != null
    And assert response.data.length >=responseLength
    And match each response.data == InventorySchema
   







