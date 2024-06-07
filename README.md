# Demonstrates the Problem External Libaries and Traits

Groovy Traits should not use imports from External Libaries.
Doing so reduces the possibility of future compatability.

The following situation could have been prevented if `def` was used instead of `ServletContext`
Doing so would have ensured either library could have been used in the future.

## Preferred
```groovy
trait UserTrait {
    private def servletContext
    
    String sayHello() {
        return "Hello from Jakarta"
    }

    def getServletContext() { servletContext }
}
```

## Not Future Compatable
```groovy
trait UserTrait {
    private def servletContext
    
    String sayHello() {
        return "Hello from Jakarta"
    }

    jakarta.servlet.ServletContext getServletContext() { servletContext }
}
```
