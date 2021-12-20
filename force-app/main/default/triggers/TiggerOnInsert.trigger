trigger TiggerOnInsert on Website_Home_Page__c (after insert) {
for(Website_Home_Page__c page : Trigger.New) {
        String name = page.Name__c;
        String template = page.Home_Page_HTML_Text__c;
        functions.Function homepage = functions.Function.get('home_page_html_text.gethomepagehtmltext');
        functions.FunctionInvocation invocation = homepage.invoke('{"name":name, "htmltemplate": template}');
        String jsonResponse = invocation.getResponse();
        Map<String, Object> m = (Map<String, Object>)JSON.deserializeUntyped(jsonResponse);
        List<Object> a = (List<Object>)m.get('htmltemplates');
        Map<String, String> a2 = (Map<String, String>)a[0];
        String html = a2.get('htmltemplate');
        page.Home_Page_HTML_Text__c = html;
    } 
}