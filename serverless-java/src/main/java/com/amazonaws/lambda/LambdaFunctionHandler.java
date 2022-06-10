package com.amazonaws.lambda;

import com.amazonaws.services.lambda.runtime.Context;
import com.amazonaws.services.lambda.runtime.RequestHandler;


public class LambdaFunctionHandler implements RequestHandler<String, String> {


    public LambdaFunctionHandler() {}

    @Override
    public String handleRequest(String event, Context context) {
        context.getLogger().log("Received event: " + event);
        return event;
    }
}