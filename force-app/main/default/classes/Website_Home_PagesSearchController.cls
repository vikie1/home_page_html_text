public with sharing class Website_Home_PagesSearchController {
    public Website_Home_PagesSearchController() {

    }
    /** @AuraEnabled
    public static List<Website_Home_Page__c> searchWebsite_Home_Page__c( String searchTerm ) {
        List<Website_Home_Page__c> accounts = new List<Website_Home_Page__c>();
        if ( String.isNotBlank( searchTerm ) ) {
            List<List<SObject>> searchResults = [
                FIND :searchTerm
                RETURNING Website_Home_Page__c(
                    Home_Page_HTML_Text__c, Name
                    ORDER BY Name
                    LIMIT 10
                )
            ];
            accounts = searchResults[0];
        }
        return accounts;
    }**/
}
