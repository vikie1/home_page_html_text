package com.salesforce;

public class FunctionInput {
    private String name;
    private String htmltemplate;
    public FunctionInput(String name, String htmltemplate) {
        this.name = name;
        this.htmltemplate = htmltemplate;
    }

    /**
     * @return the name
     */
    public String getName() {
        return name;
    }
    /**
     * @return the htmltemplate
     */
    public String getHtmltemplate() {
        return htmltemplate;
    }
}

