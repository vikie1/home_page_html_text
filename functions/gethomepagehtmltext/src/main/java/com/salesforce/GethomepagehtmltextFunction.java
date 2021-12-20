package com.salesforce;

import com.salesforce.functions.jvm.sdk.Context;
import com.salesforce.functions.jvm.sdk.InvocationEvent;
import com.salesforce.functions.jvm.sdk.SalesforceFunction;
import com.salesforce.functions.jvm.sdk.data.Record;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import java.util.ArrayList;
import java.util.List;

/**
 * Describe GethomepagehtmltextFunction here.
 */
public class GethomepagehtmltextFunction implements SalesforceFunction<FunctionInput, FunctionOutput> {
  private static final Logger LOGGER = LoggerFactory.getLogger(GethomepagehtmltextFunction.class);

  @Override
  public FunctionOutput apply(InvocationEvent<FunctionInput> event, Context context)
      throws Exception {

        String url = event.getData().getName();
        String template = "<html><body><h1>Home Page</h1></body></html>";
        List<Htmltemplate> templates = new ArrayList<>();
        templates.add(new Htmltemplate(url, template));

    return new FunctionOutput(templates);
  }
}
