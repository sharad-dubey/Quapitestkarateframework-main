Feature: Verify the Recently Created Item

  Background: Setup the base path
    * url baseUrl

    # Call the addNewItem.feature to create a new item and store the response
    * def createNewInventory = call read('classpath:com/api/automation/InventoryFlow/addNewItemNonExistingId.feature')
    * def body = read("../NewIdEntry.json")

    # Extract the ID from the response
    * def getAddedID = createNewInventory.uniqueId
    * karate.log('Extracted ID for GET Request:', getAddedID)
    * print getAddedID

  Scenario: Validate the Recently Added Item in Inventory
    Given path 'api/inventory/filter'
    And param id = getAddedID
    When method get
    Then status 200
    * karate.log(response)
    * match response.id == getAddedID
    * match response.name == body.name
    * match response.image == body.image
    * match response.price == body.price
