

public with sharing class LinkToFunction {
     public static void test() {
        functions.Function myFunction = functions.Function.get('MyProject.myfunction');
        // Pass a callback to Function.invoke to perform an asynchronous invocation.
        functions.FunctionInvocation invocation = myFunction.invoke('{"fields":["Id","Name"]}', new DemoCallback());
    }
    
     public static void invokeFunction()
     {
        functions.Function homepage = functions.Function.get('home_page_html_text.gethomepagehtmltext');
        functions.FunctionInvocation invocation = homepage.invoke('{"name":name, "htmltemplate": template}');
        String jsonResponse = invocation.getResponse();
         List<Website_Home_Page__c> pages = new List<Website_Home_Page__c>();
         for (Website_Home_Page__c page : pages){
             String name = page.Name__c;
        String template = page.Home_Page_HTML_Text__c;
        Map<String, Object> m = (Map<String, Object>)JSON.deserializeUntyped(jsonResponse);
        List<Object> a = (List<Object>)m.get('htmltemplates');
        Map<String, String> a2 = (Map<String, String>)a[0];
        String html = a2.get('htmltemplate');
        page.Home_Page_HTML_Text__c = html;
         }
         
          //long-running Apex code
     }

}
