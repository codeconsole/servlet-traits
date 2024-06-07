trait ServletAttributes {
    private def servletContext

    String sayHello() {
        return "Hello from Both"
    }

    def getServletContext() { servletContext }
}