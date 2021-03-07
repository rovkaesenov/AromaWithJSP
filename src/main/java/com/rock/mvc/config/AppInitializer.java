package com.rock.mvc.config;

import org.springframework.web.servlet.support.AbstractAnnotationConfigDispatcherServletInitializer;

public class AppInitializer extends AbstractAnnotationConfigDispatcherServletInitializer {
    @Override
    protected Class<?>[] getRootConfigClasses() {
        return new Class[]{HibernateConfig.class, SpringSecurityConfig.class};
    }

    @Override
    protected Class<?>[] getServletConfigClasses() {
        return new Class[]{MvcConfiguration.class};
    }

    @Override
    protected String[] getServletMappings() {
        return new String[]{"/"};
    }

//    @Override
//    protected FrameworkServlet createDispatcherServlet(WebApplicationContext servletAppContext) {
//        DispatcherServlet  dispatcherServlet = new DispatcherServlet(servletAppContext);
//        dispatcherServlet.setDetectAllHandlerExceptionResolvers(false);
//        return dispatcherServlet;
//    }
}
