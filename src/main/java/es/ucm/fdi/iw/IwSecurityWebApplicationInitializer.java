package es.ucm.fdi.iw;

import java.io.IOException;

import javax.servlet.ServletContext;

import org.springframework.context.annotation.Bean;
import org.springframework.core.annotation.Order;
import org.springframework.security.web.context.AbstractSecurityWebApplicationInitializer;
import org.springframework.web.multipart.commons.CommonsMultipartResolver;
import org.springframework.web.multipart.support.MultipartFilter;

@Order(2)
public class IwSecurityWebApplicationInitializer extends
		AbstractSecurityWebApplicationInitializer {
	
	@Override
	protected void beforeSpringSecurityFilterChain(ServletContext servletContext) {
		// see http://docs.spring.io/spring-security/site/docs/current/reference/htmlsingle/#csrf-multipartfilter
		insertFilters(servletContext, new MultipartFilter());
	}
	
    @Bean(name="multipartResolver") 
    public CommonsMultipartResolver getResolver() throws IOException {
        CommonsMultipartResolver resolver = new CommonsMultipartResolver();        
        resolver.setMaxUploadSizePerFile(5 * 1024 * 1024);// 5 MB
        resolver.setMaxInMemorySize(10 * 1024 * 1025); // zip-bomb protection
        return resolver;
    }	
}