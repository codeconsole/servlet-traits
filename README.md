# Demonstrates the Problem External Libaries and Traits [ServletAttributes](https://github.com/grails/grails-core/blob/6.2.x/grails-web-common/src/main/groovy/grails/web/api/ServletAttributes.groovy)

Groovy Traits should not use imports from External Libaries.
Doing so reduces the possibility of future compatability.

The following situation could have been prevented if `def` was used instead of `ServletContext`.
Doing so would have ensured either library could have been used in the future.

## Preferred
```groovy
trait ServletAttributes {
    private def servletContext
    
    String sayHello() {
        return "Hello from Jakarta"
    }

    def getServletContext() { servletContext }
}
```

## Not Future Compatable
```groovy
trait ServletAttributes {
    private def servletContext
    
    String sayHello() {
        return "Hello from Jakarta"
    }

    jakarta.servlet.ServletContext getServletContext() { servletContext }
}
```

To Run Demo
```
./initTest.sh javax 3
./runTest.sh jakarta 4
```

compared to
```
./initTest.sh pref 3
./runTest.sh jakarta 4
```
