public with sharing class Website_Home_PageSearchController {
    public Website_Home_PageSearchController() {

    }
    @AuraEnabled
    public static List<Website_Home_Page__c> searchWebsite_Home_Page( String searchTerm ) {
        List<Website_Home_Page__c> accounts = new List<Website_Home_Page__c>();
        if ( String.isNotBlank( searchTerm ) ) {
            List<List<SObject>> searchResults = [
                FIND :searchTerm
                RETURNING Website_Home_Page__c(
                    Home_Page_HTML_Text__c, Name__c
                    ORDER BY Name__c
                    LIMIT 10
                )
            ];
            accounts = searchResults[0];
        }
        return accounts;
    }
}
