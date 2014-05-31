# Swagger Sample App

## Overview
This is a rails project to build a stand-alone server which implements the Swagger spec.  You can find out 
more about both the spec and the framework at http://swagger.wordnik.com.  For more information 
about Wordnik's APIs, please visit http://developer.wordnik.com.  There is an online version of this
server at http://petstore.swagger.wordnik.com/api/api-docs

This project is using a [fork](https://github.com/CraigCottingham/grape-swagger/tree/swagger-ui) of grape-swagger, generously written by Tim Vandecasteele.  Once the changes to make it swagger-1.2 compatible are merged, the project will be updated to use that.  Also many thanks to [Kyle Ginavan](https://twitter.com/kylejginavan) and [Craig Cottingham](https://twitter.com/CraigCottingham) for putting this sample together, and updating the grape-swagger gem.

### To run
To run the server, run this task:
```
bundle update
rake db:migrate
rails s

```

Note if you have trouble with `bundle update`, please make sure you have postgres installed--rails is expecting it, even though it's not using the database at all.

This will start Jetty embedded on port 3000.

### Testing the server
Once started, you can navigate to http://localhost:3000/api/api-docs to view the Swagger Resource Listing.
This tells you that the server is up and ready to demonstrate Swagger.

### Using the UI
There is an HTML5-based API tool available in a separate project.  This lets you inspect the API using an 
intuitive UI.  You can pull this code from here:  https://github.com/wordnik/swagger-ui

You can then open the dist/index.html file in any HTML5-enabled browser.  Upen opening, enter the
URL of your server in the top-centered input box (default is http://localhost:8002/api/api-docs).  Click the "Explore"
button and you should see the resources available on the server.

