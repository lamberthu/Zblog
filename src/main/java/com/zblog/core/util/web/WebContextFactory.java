package com.zblog.core.util.web;

public class WebContextFactory{

  private static final ThreadLocal<WebContext> WEB_CONTEXT_HOLDER = new ThreadLocal<WebContext>();

  public WebContextFactory(){
  }

  public static WebContext get(){
    return WEB_CONTEXT_HOLDER.get();
  }

  public static void set(WebContext context){
    WEB_CONTEXT_HOLDER.set(context);
  }

  public static void remove(){
    WEB_CONTEXT_HOLDER.set(null);
  }

}