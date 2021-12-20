package com.salesforce;

import java.util.List;

public class FunctionOutput {
  private final List<Htmltemplate> htmltemplates;

  public FunctionOutput(List<Htmltemplate> htmltemplates) {
    this.htmltemplates = htmltemplates;
  }

  public List<Htmltemplate> getHtmltemplates() {
    return htmltemplates;
  }
}
