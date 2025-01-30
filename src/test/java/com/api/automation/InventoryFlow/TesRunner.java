package com.api.automation.InventoryFlow;

import com.intuit.karate.junit5.Karate;
import com.intuit.karate.junit5.Karate.Test;

public class TesRunner {
	
	@Test
	public Karate runTest() {
		return Karate.run("getItemDetails",
		"getItemDetailsById",
		"addNewItemNonExistingId",
		"createNewItemWithExistingId",
		"itemCreationWithMissingFields",
		"recentCreatedItem").relativeTo(getClass());
		
	}


}
