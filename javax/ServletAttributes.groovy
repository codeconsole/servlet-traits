trait ServletAttributes {
    private def servletContext
    
    String sayHello() {
        return "Hello from Javax"
    }

    javax.servlet.ServletContext getServletContext() { servletContext }
}