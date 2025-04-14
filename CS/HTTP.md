# HTTP
- HTTP is a core operational protocol of the internet. They allow your web browser to communicate with a web server that hosts a website. HTTP is a communication protocol you use whenever you browse the web and transfers web data/resources. It is a request-response based protocol (HTTP request - HTTP response).
- HTTP are used on top of TCP to transfer webpages and content from websites. WHAT IS THE DIFFERENCE? HTTP vs TCP?:  
  HTTP (application layer) is concerned with the content of the data that's being sent. HTTP defines the syntax and semantics of the messages being exchanged. TCP (transport layer) is focused on the deliver of data packets.
- The HTTP request consists of a method, path, version, and header and optionally a body.

```js
  GET / HTTP/1.1 //method, path, version
  Host: www.example.com //header; indicates the server to which the request is directed.
  Accept: text/html //header; specify the media types that the client accepts.

  //body
  Content-Type: application/x-www-form-urlencoded
  Content-Length: 27

  username=johndoe&password=secret123
```

- The method is the type of request (GET (retrieve), POST (send), PUT (update on the web server), DELETE (remove), etc.)
- The path is the URL of the resource you want to access from the server
- The version is the HTTP version 1.1 and 2.0 are most used.
- Headers contain information about the request and the client that is making that request. 
  - The `Host:` header specifies the host of the server and indicates where the resource is requested from.
  - The `User-Agent:` header informs the web server of the application that is making the request. It often includes the operating system (Windows, Mac, Linux), version, and application vendor.
  - The `Accept:` header informs the web server what type of content the client will accept as the response.
  - The `Accept-Language:` header indicates the language and optionally the locale that the client prefers.
- Body contains the actual data being sent to the server. For example, the contents of a form submission. A request body is often included when using the HTTP POST and PUT methods to transmit data.
  - The `Content-Type:` header indicates the type of content being transmitted in the request body.
  - The `Content-Length:` header indicates the length of the request body.

The HTTP response consists of a status code, header, and body:

```js
  HTTP/1.1 200 OK //version, status code and status message
  Content-Type: text/html //header; specify the media type that the server sends back
  Content-Length: 100 //header; specify the length of the body

  //body
    //html code inside...
```
The common response headers are:
- The `Date` header specifies the date and time the HTTP response was generated.
- The `Server` header describes the web server software used to generate the response.
- The `Content-Length` header describes the length of the response.
- The `Content-Type` header describes the media type of the resource returned (e.g. HTML document, image, video).

The status code is a 3-digit number that indicates the result of the request. The status message is a text representation of the status code:
- __100-199 - Informational__ - Request received, continuing process. Provisional, may be followed by another message later. The most common is `100 CONTINUE` - the web client should continue the request or ignore the response if it is not necessary

- __200-299 - Success__ - Request completed successfully. The most common is `200 OK` - the request was successful

- __300-399 - Redirection__ - Further action needs to be taken in order to complete the request. It indicates that the requested resource has been moved to a new URL/path. The most common is `301 MOVED PERMANENTLY` & `302 FOUND` 302 represents a temporary redirect and 301 represents a permanent redirect. For temporary redirects, the browser will perform a GET request on the new URL.

- __400-499 - Client Error__ - The request contains bad syntax and cannot be fulfilled by the server. The most common: 
  - `400 BAD REQUEST` - the request was invalid because of bad data sent to the web server. 
  - `401 UNAUTHORIZED` - the client is not authorized to make the request, the user must log into an account before the request is processed. 
  - `403 FORBIDDEN` - the client is authorized to make the request, but is not allowed to access the requested resource due to the web server not processing the request. This is often used to indicate that a user does not have sufficient permissions to execute an action in a web application. 
  - `404 NOT FOUND` - the server cannot find the requested resource.

- __500-599 - Server Error__ - The server failed to fulfill an apparently valid request.
  - `500 Internal Server Error` - A generic error status code given when an unexpected error or condition occurred while processing the request.
  - `502 Bad Gateway` - The web server received an invalid response from the Application Server.
  - `503 Service Unavailable` - The web server cannot process the request.

The meaning of OK for __HTTP methods__
- `GET` - the resource is found and is included in the body of the HTTP response.
- `POST` - the resource was successfully transmitted to the server
- `PUT` - the resource was successfully updated/transmitted to the server
- `DELETE` - the resource was successfully deleted from the server

__HTTPS__ is the __secure version__ of HTTP. It is used to encrypt data in transit and secures the connection between 2 computers. Before a request is sent, it is encrypted with a secret code (key) that is known only to the server. Only the other computer can turn that secret code back to its original content. Your web browser indicates __HTTPS with the locked icon__ in the address bar
