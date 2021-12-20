({
    onWebsite_Home_PageLoaded: function( component, event, helper ) {
        var cols = [
            {
                'label': 'Name',
                'fieldName': 'Name__c',
                'type': 'url'
            },
            {
                'label': 'Home_Page_HTML_Text',
                'fieldName': 'Home_Page_HTML_Text__c',
                'type': 'text'
            }
        ];
        component.set( 'v.cols', cols );
        component.set( 'v.rows', event.getParam( 'accounts' ) );
    },
    onRowAction: function( component, event, helper ) {
        var action = event.getParam( 'action' );
        var row = event.getParam( 'row' );
        if ( action.name == 'view_details' ) {
            var navigation = component.find( 'navigation' );
            navigation.navigate({
                'type': 'standard__recordPage',
                'attributes': {
                    'objectApiName': 'Account',
                    'recordId': row.Id,
                    'actionName': 'view'
                }
            });
        }
    }
})