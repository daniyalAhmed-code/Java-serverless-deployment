package com.serverless;

import java.util.Map;

import com.amazonaws.services.lambda.runtime.Context;
import com.amazonaws.services.lambda.runtime.LambdaLogger;
import com.amazonaws.services.lambda.runtime.RequestHandler;

public class HelloWorldHandler implements RequestHandler<Map<String,String>, String>{
	  
	  public String handleRequest(Map<String,String> event, Context context)
	  {
	    LambdaLogger logger = context.getLogger();
	    String response = new String("200 OK");
	    logger.log("ENVIRONMENT:"+System.getenv());
	    return response;
	  }
	}