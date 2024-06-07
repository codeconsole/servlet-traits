trait ServletAttributes {
    private def servletContext
    
    String sayHello() {
        return "Hello from Jakarta"
    }

    jakarta.servlet.ServletContext getServletContext() { servletContext }
}