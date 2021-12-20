({
    // code in the helper is reusable by both
    // the controller.js and helper.js files
    handleSearch: function( component, searchTerm ) {
        var action = component.get( "c.searchWebsite_Home_Page" );
        action.setParams({
            searchTerm: searchTerm
        });
        action.setCallback( this, function( response ) {
            var event = $A.get( "e.c:Website_Home_PageLoaded" );
            event.setParams({
                "Website_Home_Page": response.getReturnValue()
            });
            event.fire();
        });
        $A.enqueueAction( action );
    }
})